Work with Subagents
===================

Subagents are child Agent runs that a parent **Agent** or **Goal** run can use
to divide a larger task into focused pieces. A parent can delegate research,
planning, implementation, testing, or review, then use the structured results
to decide what to do next.

You do not normally create a Subagent by typing a separate conversation. Start
an **Agent** or **Goal** run, describe the outcome and any work that can happen
in parallel, and let the parent Agent decide whether delegation is useful. An
active session is required. The Subagent tools are available to the parent
run, not to a child Subagent, so a child cannot recursively create another
Subagent.

How delegation works
--------------------

The parent creates a recoverable graph containing one or more named nodes. A
node has a role, an objective, an explicit tool scope, and an optional list of
dependencies. A node starts only after every node in ``dependsOn`` has
completed successfully. Independent nodes can run in parallel when provider,
worktree, terminal, and system resources are available.

The parent does not automatically copy its entire conversation to a child.
Only explicitly delegated messages, context blocks, artifacts, source-folder
references, and dependency results are provided. Sensitive values such as API
keys, authorization data, cookies, headers, environment secrets, and tokens
are excluded from delegated context.

Roles and workspace modes
--------------------------

Each role provides an upper bound for the tools a node may use. The parent's
explicit tool scope can narrow that bound, but cannot widen it.

.. list-table::
   :header-rows: 1
   :widths: 18 34 24 24

   * - Role
     - Typical use
     - Capability ceiling
     - Workspace requirement
   * - Researcher
     - Inspect project context and verify facts
     - Read, verify
     - Shared read-only
   * - Planner
     - Break down work or compare approaches
     - Read
     - Shared read-only
   * - Implementer
     - Make the requested project change
     - Read, verify, propose, write, destructive, execute
     - Managed worktree is required
   * - Tester
     - Run checks and report verification results
     - Read, verify, execute
     - Shared read-only by default
   * - Reviewer
     - Inspect a proposed result and identify risks
     - Read, verify
     - Shared read-only

``shared_read_only`` nodes can inspect only the selected source folders and
cannot write to them. A ``managed_worktree`` node receives a separate managed
worktree for its scoped source folders. Its edits are isolated from the parent
workspace until a separate merge flow is approved.

The implementation node's result is structured so the parent can see a
summary, findings, changed files, tests, artifacts, and whether a parent
decision is needed. A malformed or incomplete child response is reported as a
partial result instead of being treated as a successful implementation.

Monitor a Subagent
------------------

To open the user-facing view, open a session and choose **Subagent panel** from
the dock's **Add panel** menu. The panel is session-scoped and can show more
than one graph. It provides:

* a graph selector when the session has multiple delegated graphs;
* a live summary of total, running, queued, approval-waiting, and failed
  nodes;
* a node list with each node's human-readable name and status; and
* the selected node's delegated conversation, status messages, retry events,
  approval events, and final result.

The graph and node state is persisted with the session, so a recoverable graph
can remain visible after an interruption. The panel does not replace the main
timeline: use the main timeline and review surfaces for the parent run's
overall decision.

Understand statuses
-------------------

Common node statuses are:

* **Pending** — the node exists but is waiting for its dependencies or for the
  scheduler to refresh it;
* **Ready** — all dependencies completed and the node can start;
* **Queued** — execution is waiting for provider, worktree, terminal, system,
  or automatic-retry capacity;
* **Running** — the child Agent is executing its objective;
* **Waiting for approval** — a tool action needs the active approval flow;
* **Blocked** — the node cannot continue with its current dependency or
  execution state;
* **Completed** — the child returned a usable result;
* **Failed** — execution or the child's reported result failed; and
* **Cancelled** — the node or its graph was stopped.

Queued is not itself an error. A queued node starts when the reported resource
condition clears. A graph may finish with warnings when some work completed
but another node did not.

Approvals, retry, and cancellation
-----------------------------------

Subagents use the same Tool Policy and approval boundary as the parent run.
Creating a graph changes persisted execution state, writing or executing in a
managed worktree still requires the applicable approval, and a child cannot
use delegation to bypass read-only mode or workspace boundaries.

In the Subagent panel:

* choose **Retry** for a failed, blocked, or cancelled node after reviewing
  its objective and failure details. A retry is a new attempt;
* choose **Cancel node** to stop the selected active node; or
* choose **Cancel all Subagents** to stop the active graph. Independently
  completed nodes are retained.

For a node that changed files in a managed worktree, completion does not
automatically modify the parent workspace. The basic Subagent panel provides
status, conversation, retry, and cancellation controls; merge preview and
application are separate operations. Use the merge workflow to preview the
diff and possible conflicts first, then apply the merge only after the preview
still matches the current source and target state. If the target has changed
or the preview reports a conflict, resolve the workspace situation and create
a fresh preview.

Good delegation requests
------------------------

Delegation works best when each piece has a clear boundary and acceptance
condition. For example::

   In Agent mode, investigate the current save-system bug. Parallelize read-only
   research and test analysis first. Keep implementation changes isolated,
   report changed files and test results, and wait for my decision before any
   merge into the active workspace.

If a task depends on a previous result, say so explicitly. Keep the parent
responsible for the final integration, especially when multiple worktrees or
conflicting edits are involved.

Troubleshooting
---------------

If the panel is empty, confirm that a session is open and that the current run
is an **Agent** or **Goal** run that actually delegated work. If a node remains
queued, read the queue reason before cancelling it. If it is waiting for
approval, use the normal approval controls for the pending action. For a
failure, inspect the child conversation and structured result before retrying;
repeating a failed objective without changing its context usually does not
help.

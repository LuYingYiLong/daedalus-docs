Approvals, Trust, and Recovery
==============================

Daedalus separates reading, verification, proposals, writes, and destructive
operations. Writes and risky external operations go through the approval
gateway according to the selected approval mode.

Approval modes
--------------

Manual
   Ask before actions that require approval. This is the best default while
   you are learning a project or reviewing unfamiliar integrations.

Auto-safe
   Allow operations classified as safe while still pausing for higher-risk
   actions. Check the tool description and the requested scope before relying
   on this mode.

Full trust
   Disable the OS sandbox and automatically approve all tools for the session.
   Use this only for a trusted local project and a request whose scope you
   understand. It does not make a model correct, and it does not turn an
   untrusted MCP server into a trusted one.

The approval mode is a convenience setting, not a replacement for version
control or code review. Keep important projects in Git and review destructive
actions individually.

What an approval prompt means
-----------------------------

When Studio asks **Approve tool execution?**, read the tool name, target,
command, and scope before pressing **Approve**. A cross-workspace action may
also ask you to type a consent phrase. Reject the action when the target is
unclear, the command is broader than the request, or the result can be
achieved with a safer read-only operation.

Plan approval
-------------

In Plan mode, Studio can show **Approve plan?** before execution. Read the
steps in order and check that the plan names the right files, tools, and
verification. Choose **Revise** and describe what to change if the plan is too
broad, misses a constraint, or uses the wrong approach. Approving a plan
starts execution; it is not the same as approving every future destructive
action.

Clarification requests
----------------------

If the plan needs information, Studio shows **Clarification needed** with
suggested replies and a field for your own answer. Choose the suggested reply
only when it matches your intent. **Skip and continue** lets the agent make
assumptions from the available context; use it only when the missing detail is
not important. You can add the missing constraint in a later message and
revise the plan.

Tool budget decisions
---------------------

Long runs can pause when they reach a tool-call count or tool-result size
limit. The dialog shows the limit that was reached, steps used, result size,
and the extra budget requested. Choose:

* **Continue** when the current direction is correct and needs more tool work;
* **Summarize with current results** when you want a useful stopping point;
* **Cancel this run** when the task should stop.

More budget means more execution, not more certainty. Read the current results
before continuing.

Pause and resume
----------------

A run can pause because it needs approval, has reached a tool budget, needs a
clarification, or has been interrupted. Studio persists the run state and its
evidence. Continuing a paused run does not intentionally replay successful
writes.

After an application or backend interruption, Studio marks active work as
interrupted. Retry from the recorded checkpoint after checking the workspace
and the current Git diff. A retry uses write fingerprints and prior evidence
to reduce duplicate effects, but you should still inspect the resulting diff.

External integrations
---------------------

Custom MCP servers, custom providers, browser automation, terminal commands,
and Skills can expand what a request can reach. Before enabling one, review
its endpoint or command, environment variables, requested tools, and approval
behavior. Secrets must stay in the appropriate credential or secret store and
out of prompts, logs, and screenshots.

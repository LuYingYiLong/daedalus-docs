Sessions and Conversation History
=================================

A session is a durable working thread for one project context. It contains the
conversation timeline, attachments, agent runs, plans, approvals, tool
results, and relevant layout state.

Use sessions intentionally
--------------------------

Create a new session when the task has a different goal, risk level, or
context. Continue the existing session when the new request depends on the
same investigation and evidence.

Examples:

* Keep a scene refactor and its follow-up validation in one session.
* Start a separate session for a new feature so its context does not compete
  with the refactor.
* Use a read-only session to investigate a bug before opening a session that
  is allowed to edit files.

Session actions
---------------

Studio supports the following session lifecycle actions:

* Create a new session from the workspace.
* Move between previous and next sessions.
* Continue an interrupted or approval-paused run when it is safe to do so.
* Move a session to another workspace when the conversation belongs with a
  different project.
* Fork a session when you want to explore a different approach without
  changing the original conversation.
* Archive a completed or inactive session. Archived sessions remain searchable
  from **Settings > Archived sessions**.
* Export session content when you need a portable record, after checking it for
  private prompts, file paths, and credentials.

Move a session to another workspace
-----------------------------------

A session can move between registered workspaces from the workspace tree. This
changes the project context attached to the session; it does not move, copy, or
modify files in either project.

Use either method:

#. Open the session's context menu and choose **Move session to...**, then
   select the target workspace.
#. Drag the session onto the target workspace in the workspace tree.

The session remains available with its conversation history, attachments,
agent runs, plans, approvals, and other persisted session data. Studio
refreshes the session under the target workspace and resets the session's
file-panel workspace state. Reopen files from the new workspace before
continuing.

Before moving a session, make sure that:

* the session is idle: no active assistant run, pending approval, queued
  message, or other in-flight operation;
* all terminals in the session are closed;
* unsaved file changes are saved or discarded;
* project files or code selections have been removed from the Composer
  context;
* the session has no managed worktree. Hand off or delete the managed worktree
  first.

A move can fail if the target workspace was removed or the session is already
bound to that workspace. The operation is available in Daedalus Studio; it
does not move project files or change either project on disk.

Layouts and terminal tabs
-------------------------

Panel positions, tabs, and dimensions are saved per session where applicable.
Terminal processes are isolated by session and are not restored as running
processes after Studio restarts. Start a new terminal task after a restart and
re-check its working directory.

Search and navigation
---------------------

Use conversation search to find a message, tool result, or verification detail
inside the current history. Use the archived-session search when you need a
session that is no longer in the active workspace tree.

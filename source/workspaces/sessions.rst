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
* Fork a session when you want to explore a different approach without
  changing the original conversation.
* Archive a completed or inactive session. Archived sessions remain searchable
  from **Settings > Archived sessions**.
* Export session content when you need a portable record, after checking it for
  private prompts, file paths, and credentials.

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

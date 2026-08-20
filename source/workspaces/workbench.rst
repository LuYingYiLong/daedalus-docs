Understand the Studio Workbench
===============================

The main Studio window is a workbench. It gives different jobs their own
place, but they all use the same workspace and session.

The main areas
--------------

**Workspace sidebar**
   The left side lists projects and sessions. It is where you change projects,
   create sessions, pin important sessions, and find recent, running, unread,
   or archived work.

**Conversation area**
   The center shows the current session. User messages, assistant replies,
   plans, tool calls, file changes, terminal output, approvals, and warnings
   appear in one timeline.

**Composer**
   The composer is the input area at the bottom. It controls the workspace,
   mode, model, reasoning effort, approval mode, additional context, and the
   message you want to send. See :doc:`../agent/composer`.

**Side dock**
   The side dock is useful for Git changes and file or browser panels. Open it
   when you want to keep the conversation visible while inspecting a result.

**Bottom dock**
   The bottom dock is useful for terminal sessions. It can also host files,
   browser panels, or the Git review panel when that arrangement suits your
   work.

Home and session views
----------------------

When no session is selected, Studio shows a home view. It helps you choose a
workspace, start a session, and launch common project actions. When a session
is selected, the central area becomes the conversation view.

The session summary can show environment information, Godot information,
plans, and source attachments. From the summary you may also be able to run
the Godot project, run a selected scene, open a diff, or start a Git commit
action, depending on the workspace and available tools.

Panels and tabs
---------------

Use the ``+`` action in a dock to add another panel. Studio supports these
panel types:

* **Changes** — review the Git diff for the workspace;
* **Terminal** — run and watch a terminal process;
* **Files** — browse and edit text files;
* **Browser** — open a web page and optionally provide page context to the
  agent.

You can move between tabs, close tabs, resize a dock, and place a dock in
fullscreen. Studio remembers the arrangement for the session. A terminal
process is still stopped when you leave the session or restart Studio; panel
layout persistence does not mean process persistence.

Notifications and unread work
------------------------------

Studio can show a native notification when a run finishes, a Goal reaches a
terminal state, an approval is waiting, or a clarification is needed. If you
were looking at another session, the workspace tree can mark the completed
session as unread. Open that session and read the timeline before acting on the
notification alone.

If the layout feels crowded
---------------------------

Hide the workspace sidebar, session sidebar, or bottom dock with the toolbar
controls or the shortcuts in :doc:`../reference/shortcuts`. You can restore a
panel at any time; hiding a panel does not delete its tabs or its session
history.

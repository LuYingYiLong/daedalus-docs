What Daedalus Studio Does
=========================

Studio is designed for development work that should leave a clear, reviewable
result in your project. You can ask a question, inspect a project, make a
bounded edit, or let the agent coordinate a larger workflow. Studio shows the
important evidence in the session timeline instead of hiding all activity
behind a chat reply.

The three parts of a normal installation are:

* **Studio** is the desktop application. It owns the windows, workspaces,
  sessions, settings, updates, and the managed local backend lifecycle.
* **Backend** runs provider connections, agent runs, tools, approvals, session
  persistence, and project services.
* **Godot Daedalus** is the editor plugin. It connects a running Godot editor
  to editor-aware tools and diagnostics when a project needs live editor
  access.

The backend is local to your computer by default. Model requests still go to
the provider you configure, and any external MCP server or web-search service
you enable is an additional trust boundary.

What you can do
---------------

Studio combines several activities that are usually spread across separate
windows:

* Keep multiple project workspaces and persistent sessions.
* Attach files, folders, images, or other project context to a request.
* Inspect and edit Godot scenes, resources, scripts, and project settings.
* Review file patches and Git diffs before accepting a result.
* Run terminal checks and read diagnostics from Godot tooling.
* Pause for approval, resume after an interruption, and retry from recorded
  evidence rather than blindly replaying completed writes.
* Add providers, custom models, MCP servers, and Skills while keeping them
  inside Studio's tool and approval policies.

How to think about Studio
-------------------------

There are four useful layers:

``Workspace``
   A project or directory boundary. File, Git, Godot, and terminal operations
   are checked against this boundary.

``Session``
   A durable conversation and its project context. A session remembers its
   messages, attachments, run history, approvals, and layout state.

``Run``
   One execution of a request. A run may be a direct answer, an inspection, a
   small edit, or a multi-stage workflow.

``Evidence``
   The inputs and results that let you judge the run: tool calls, patches,
   terminal output, diagnostics, warnings, and verification status.

The most reliable habit is to state the desired outcome, give the agent the
smallest useful context, and inspect the evidence before you accept a change.

Find the right feature
----------------------

If you want to...

* set up Studio for the first time, start with :doc:`getting-started/index`;
* understand the main window and its panels, read
  :doc:`workspaces/workbench`;
* write or review a request, read :doc:`agent/composer`;
* understand what happened during a run, read :doc:`agent/timeline`;
* make a longer task track its own progress, read :doc:`agent/goals`;
* inspect files, Git, commands, or web pages, read :doc:`tools/index`;
* connect Godot, read :doc:`godot/index`;
* configure providers and integrations, read :doc:`settings/index`.

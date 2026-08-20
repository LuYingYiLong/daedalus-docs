Run and Diagnose Godot Projects
===============================

Studio can use Godot as both a project tool and a source of read-only evidence.
This helps you move from “the file looks right” to “the project actually
runs.”

Launch and stop
---------------

From a session summary or an agent request, Studio can launch the Godot editor,
run the project, run a selected scene, stop the project, and read debug output
when the configured executable and Bridge capabilities allow it.

Running a scene
---------------

The session summary can search the project's scene files. Choose a scene and
confirm it before running. If no scenes are found, check that the workspace
source folder is correct and that the files use the expected ``.tscn`` or
``.scn`` extension.

Use a scene run to verify one feature quickly. Use a full project run when the
feature depends on project settings, autoloads, input actions, or scene
transitions.

Language server diagnostics
---------------------------

Godot LSP tools can report server status, file diagnostics, document symbols,
symbol hover information, and definitions. They are useful for questions such
as:

* “Why is this class name unresolved?”
* “Where is this signal or method defined?”
* “Which warning is attached to this line?”

LSP results are read-only. They help the agent understand the code but do not
change the project.

Debugger data
-------------

The first Daedalus DAP integration is intentionally read-only. It can report
debugger status, the last debugger error, a stack trace, and debugger
variables. It does not launch or control execution, set breakpoints, evaluate
arbitrary expressions, or call runtime methods.

Logs and editor state
---------------------

Godot tools can inspect project log configuration, list and read project logs,
read editor settings summaries, browse editor configuration files, inspect
editor project state, and list recent projects. Logs can contain local paths,
user names, errors, or game data; review them before attaching them to a
conversation or issue.

An evidence-first debugging request
------------------------------------

Try a request like::

   Run the player scene, read the Godot debug output, and inspect the current
   script diagnostics. Do not edit files yet. Tell me which error is first in
   the chain and what file and line caused it.

This keeps diagnosis separate from repair. After you understand the cause,
start a Plan or Agent request for the smallest fix and run the same check
again.

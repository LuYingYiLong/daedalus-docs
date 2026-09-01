Troubleshooting
===============

Use the smallest diagnosis that explains the failure. Check the session
timeline first, then the relevant Settings page and the version information in
**Settings > About**.

Studio does not start or shows a backend error
----------------------------------------------

* Wait for the managed backend health check to finish on the first launch.
* Restart Studio and check whether the error repeats.
* Open **Settings > About** and record the Studio and backend versions.
* If Studio offers a repair or update, use the managed action rather than
  replacing the backend manually.
* Check available disk space and whether security software blocked the bundled
  executable.

Provider connection fails
--------------------------

Confirm the API base URL, API key, model identifier, account access, and
network path. Run the provider's connection test with a known small model. If
the test succeeds but a conversation fails, inspect whether the selected model
supports the requested tool, image, reasoning, or search capability.

Godot is not detected
---------------------

Make sure the selected executable is valid and reports Godot 4.5 or newer.
Rescan the project from **Settings > Godot Projects**, verify that the folder
contains ``project.godot``, and reopen the project with the expected Godot
executable.

Editor tools are unavailable
----------------------------

Check that the Daedalus Bridge plugin is installed for the current project and
that Godot was restarted after a staged plugin change. Static project tools
may work without a live editor; editor bridge tools require a compatible
connected plugin and advertised capability.

The agent changed the wrong thing
---------------------------------

Stop the run, inspect the Git diff, and undo or revert through your normal
version-control workflow. Then start a focused read-only session, attach the
relevant file, and state the exact path and acceptance condition. Do not rely
on a summary that omits unrelated changed files.

Verification is missing or failed
----------------------------------

A warning means Studio could not run a matching validator; it is not a pass.
For a failure, read the command output and diagnostics, fix the underlying
project issue, and run the check again. If the run was interrupted, inspect
the current diff before retrying so you do not duplicate a partial change.

MCP, Skill, or browser integration is not working
--------------------------------------------------

Check the integration's endpoint or command, environment, credentials,
enabled state, and approval requirement. Review its tool list and try a small
read-only action first. Never solve a secret-storage problem by placing the
secret in a prompt or source file.

External browser does not connect
---------------------------------

Open **Settings > Browser** and confirm **Allow external browser tasks** is
enabled. Register the native host again if the extension reports that it is
missing. In Chrome or Edge, reload the matching unpacked extension and enable
**Connect to Studio** on its status page. Development Studio requires the
development extension; installed Studio requires the stable extension. A
successful connection is shown only after the Studio handshake completes.

If the connection drops during a task, do not retry an uncertain step. Check
the browser and Studio versions, reconnect read-only, and let the agent make a
new proposal.

Computer use is unavailable or paused
--------------------------------------

Computer use requires a supported Windows x64 installation. In **Settings >
Computer use**, enable **Allow AI to request window observation**; enable
**Allow AI to request window control** separately when input is needed. The
control switch also requires a Backend that advertises computer-control
support.

If a run is paused, switch to the authorized window and choose **Resume**.
Window activation changes, user input, an obstructed target, password controls,
or a closed window can pause control. Use **Cancel** or ``Ctrl+Alt+Esc`` to
stop it. For local capture testing, enable **Settings > General > Developer
mode** and use **Local diagnostics**; diagnostics do not grant the agent
access.

What to include when asking for help
------------------------------------

Include:

* Studio, backend, and Godot versions;
* the workspace type and the smallest reproduction;
* the session or run state, if visible;
* sanitized diagnostics and relevant verification output.

Remove API keys, MCP secrets, browser credentials, and private project data
before sharing anything.

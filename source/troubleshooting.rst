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

What to include when asking for help
------------------------------------

Include:

* Studio, backend, and Godot versions;
* the workspace type and the smallest reproduction;
* the session or run state, if visible;
* sanitized diagnostics and relevant verification output.

Remove API keys, MCP secrets, browser credentials, and private project data
before sharing anything.

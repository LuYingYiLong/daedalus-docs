Use the Integrated Terminal
===========================

The **Terminal** panel gives a session its own command prompt. Use it for
project checks, Godot headless commands, formatters, tests, and other commands
you would normally run from PowerShell.

Start and manage a terminal
---------------------------

#. Open a **Terminal** tab from a dock.
#. Wait for the terminal to start in the selected workspace.
#. Run a command and read its output.
#. Use **Stop terminal** when the process should end, or **Restart terminal**
   when the shell is no longer responding.

Terminal sessions are scoped to the current Studio session. When you change
sessions, Studio stops the previous session's terminal processes. After a
restart, start a new terminal and check its working directory instead of
assuming an old process continued.

Agent terminal actions
----------------------

The agent can request a safe verification command, inspect a job's status and
output, cancel a long-running job, or request a general command when the
workflow allows it. A command may be paused for approval, especially when it
writes files, uses the network, or has a broader effect than a read-only
check.

Before approving a command
--------------------------

Read the full command, working directory, environment, and expected output.
Watch for:

* commands that delete or overwrite files;
* package installation or network access;
* commands that use a different directory than the selected workspace;
* scripts that hide additional commands;
* credentials or tokens interpolated into the command line.

Prefer a named project verification preset when one exists. If no validator
exists, ask the agent to show the exact command and explain what a passing
result means.

Terminal output in the timeline
-------------------------------

The conversation can show a command's progress, output tail, exit result, and
whether the command was cancelled. A green-looking completion message is not
enough: check the exit status and whether the command actually tested the
artifact that changed.

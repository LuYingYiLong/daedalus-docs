Review Changes and Verification
===============================

Treat every agent run as a change proposal with evidence. The conversation
timeline is the place to decide whether to continue, approve, revise, or stop.

What to review
--------------

Before accepting an implementation, inspect:

* the request and the workspace selected for the run;
* tool names and inputs, especially commands and paths;
* file patches and inline diffs;
* Git diff and the list of changed files;
* terminal output, warnings, and diagnostics;
* the verification status and the exact check that ran.

A successful tool call is not the same as a correct feature. Compare the
actual diff with the requested outcome and run a project-specific test or
Godot check when the available validator is too broad or too weak.

Godot changes
-------------

For editor-aware changes, the Bridge can expose typed inspection and patch
operations when the connected plugin advertises the required capability.
Patch proposals include normalized operations, summaries, warnings, and a
fingerprint. A stale fingerprint is rejected rather than applied partially.
Editor mutations are committed through Godot's Undo/Redo transaction when the
editor bridge supports the operation.

If verification is missing
--------------------------

Studio reports missing validation as a warning. A missing validator does not
mean the change passed. If an applicable validator fails, treat the run as
failed even when the agent provides a confident explanation.

Safe completion checklist
-------------------------

#. Confirm the change is inside the intended workspace.
#. Read the complete diff, not only the final summary.
#. Check that generated files, configuration, and unrelated formatting did not
   change unexpectedly.
#. Read the verification output and reproduce the important check when the
   result matters.
#. Commit or save through your normal project workflow only after review.

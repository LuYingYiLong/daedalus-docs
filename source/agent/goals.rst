Run a Goal with Progress Tracking
=================================

A Goal is for an outcome that may need several rounds of inspection, editing,
and verification. It is more persistent than a single message and more
outcome-focused than a short Plan.

Write a good Goal
-----------------

Describe the result in a way that another person could check. Include:

* the project area and the behavior to change;
* important constraints, such as Godot version or files to preserve;
* what “done” means, such as a test, scene run, or diagnostic with no errors.

For example::

   Add a pause menu to the main scene. It must work with the existing Input
   Map, keep the current save format, and be verified by running the scene and
   checking that the pause action works.

Goal status
-----------

The Goal panel shows status, cycles, tokens, active time, readiness, evaluation,
and the current workflow. Common stages include:

* **Checking readiness** — Studio is making sure the goal can start;
* **Running** — the agent is executing work;
* **Evaluating** — the completion evaluator is checking the result;
* **Awaiting approval** or **Awaiting tool budget** — you must decide how to
  continue;
* **Paused** — execution is stopped but the Goal is still available;
* **Achieved**, **Failed**, or **Cancelled** — the Goal reached a terminal
  state.

Todo steps and changed files
----------------------------

Long workflows can show a Todo list with current and completed steps. The
panel can also summarize which files changed. Treat both as navigation aids:
open the actual diff and verification output before deciding the Goal is safe
to keep.

Pause, resume, and cancel
-------------------------

Use **Pause** when you want to inspect the current state before the next cycle.
Use **Resume** after reviewing the diff and pending decisions. **Cancel** stops
the Goal after the current safe operation finishes; existing workspace changes
are kept.

If the Goal needs more time, **Add budget** can add cycles, tokens, or active
minutes. A larger budget gives the run more room; it does not fix an unclear
request or a wrong workspace.

Rollback
--------

When tracked changes can be restored safely, **Roll back** restores the tracked
files to their state before the Goal. Rollback may be unavailable for some
changes, such as files changed outside the tracked set or changes that cannot
be restored confidently. Always inspect Git status after a rollback.

When to use Agent instead
-------------------------

Use **Agent** for one bounded edit or check. Use **Goal** when the task can
naturally be divided into cycles and you want a visible completion judgment.
For a risky multi-file refactor, start with **Plan** and approve the plan
before converting the work into execution.

Choose a Conversation Mode
===========================

The composer offers four modes. The mode influences how much planning and
tool-driven execution Studio expects from the request; it does not remove the
need to review changes.

.. list-table::
   :header-rows: 1
   :widths: 16 44 40

   * - Mode
     - Use it when
     - What to expect
   * - Ask
     - You want an explanation, recommendation, or answer.
     - Prefer this for read-only discussion and focused questions.
   * - Agent
     - You want the agent to inspect or complete a bounded task.
     - The agent may use tools, make approved edits, and run targeted checks.
   * - Plan
     - You know the outcome but want to review the sequence before execution.
     - Studio builds a plan that you can revise before allowing implementation.
   * - Goal
     - You have a larger objective that may require several stages.
     - Studio tracks progress, checkpoints, Todo items, approvals, and
       verification across a longer run.

Practical selection guide
-------------------------

Start with **Ask** when you are still learning what is wrong. Switch to
**Plan** when the change crosses several systems or files. Use **Agent** for a
small, well-scoped implementation. Use **Goal** when you can describe the
outcome but expect discovery, multiple edits, and repeated verification.

You can state a constraint in any mode, for example:

* “Read only; do not modify files.”
* “Propose the scene patch first and wait for approval.”
* “Keep the public API unchanged and run the existing tests.”
* “Stop if the required Godot version is not available.”

Writing effective requests
--------------------------

Include four pieces when possible:

* the desired behavior or outcome;
* the relevant project area or file;
* constraints such as compatibility, style, or files that must not change;
* the check that should prove the result.

The more concrete the acceptance condition, the easier it is to tell whether
the final verification actually answers your request.

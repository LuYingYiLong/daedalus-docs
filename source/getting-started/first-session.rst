Create Your First Session
=========================

#. Open Studio and add a workspace from the workspace switcher. Choose the
   project directory you want the agent to work in.
#. Create a new session.
#. Select a configured provider and model in the composer. The model menu is
   populated at runtime from the backend and shows capability badges when the
   provider reports them.
#. Select a mode. Use **Ask** for an explanation, **Agent** for a bounded task
   that may use tools, **Plan** for a proposed sequence of work, or **Goal**
   for a longer-running objective. See :doc:`../agent/modes`.
#. Describe one outcome in plain language. Mention the relevant scene, script,
   test command, or constraint when you know it.
#. Add context only if the task needs it. You can attach files, folders, or
   images from the composer.
#. Send the request and watch the timeline. Review tool inputs, proposed
   changes, terminal output, and verification status before continuing.

A good first request
--------------------

Prefer a request with a visible acceptance condition, for example::

   Inspect the player movement script. Explain why diagonal movement is
   faster, propose a fix, and run the relevant Godot check. Do not edit files
   until I approve the change.

This gives the agent a target, a safety constraint, and a way to verify the
result. If you already know that a file should change, name the file and say
what behavior should be different.

If the agent needs more information
------------------------------------

The composer can show a context-budget estimate and the session can keep
attachments and plans. Prefer a small, relevant selection over attaching the
whole repository. You can ask the agent to inspect the workspace first and
then attach the files it identifies as relevant.

When a run finishes, the session remains available in the workspace tree. You
can continue it, start a fresh session for a separate task, or archive it
without losing its history.

Use the Composer
================

The composer is where you tell Studio what you want. Think of it as a small
control panel attached to your message: the text explains the task, and the
controls explain what kind of help the agent may provide.

Choose the workspace
--------------------

The workspace selector tells Studio which project files and tools are in
scope. Choose **No workspace** when you only want a general conversation. Add
or select a workspace before asking the agent to inspect or change project
files.

Choose the mode
---------------

Use the mode menu to choose **Ask**, **Agent**, **Plan**, or **Goal**. The
composer placeholder changes with the mode to remind you what kind of request
works well. See :doc:`modes` for a decision guide.

Choose model and reasoning effort
---------------------------------

The model menu groups models by provider. A model may show badges for
reasoning, vision/image input, or search. Select a reasoning effort when the
model supports it:

* **Low** is useful for a short answer or a simple edit;
* **Medium** is a practical default for most development work;
* **High**, **Extra high**, or **Max** can help with a difficult analysis but
  may use more time and tokens.

Reasoning effort changes how much work the model spends thinking. It does not
grant additional tools or permission to write files.

Choose approval mode
--------------------

The approval menu contains **Manual**, **Auto-safe**, and **Full Trust**. This
is separate from the conversation mode: an Agent request can still be manual,
and an Ask request can still use a configured model. Use Manual while learning
the project; understand the consequences of Full Trust before enabling it.

Add context
-----------

Use the context button to add files, a folder, or images. Context items appear
below the message and can be removed individually. You can also paste text or
drop supported files into the composer.

For a precise question, add the smallest useful item. For example, attach one
script and its test instead of the entire repository. Use the Files panel or a
message selection when you want only a few lines.

Commands and Skills
-------------------

Type ``/`` at the start of a line to search available slash commands. Type
``@`` to search enabled Skills. Select a suggestion with the mouse, arrow keys,
Enter, or Tab. ``@image-gen`` is available when the image-generation Skill and
an explicit image-generation model are configured.

You can also start a message with ``/ask``, ``/agent``, ``/plan``, or ``/goal``
to choose that mode for one submission. For example::

   /plan Replace the temporary save system without changing the save format.

The command prefix selects the mode; the text after it remains the request.

Commands and Skills are loaded from the current runtime. If a suggestion is
missing, check **Settings > Skills** or wait for Studio to finish loading its
command catalog.

Send, stop, and queue
---------------------

Choose **Send** to start a request. While the agent is responding, the same
area can offer **Stop** or **Queue message**:

* **Stop** asks the current run to stop safely;
* **Queue message** saves the next request for later instead of interrupting
  the current response.

Open the queue panel to edit, remove, or drag pending messages into a new
order. Queued messages are not approvals; each one still runs with its own
context and tool policy.

Hide the composer
-----------------

If you need more room for a diff, file editor, or browser, collapse the
floating composer. Use **Show composer** to bring it back. Collapsing the
composer does not discard the draft.

Before you press Send
---------------------

Check the workspace, mode, model, approval mode, and context strip. Then write
the desired result and the check that should prove it. These five seconds of
setup usually prevent a long run with the wrong project or model.

Keyboard behavior
-----------------

Press **Enter** to send. Press **Shift+Enter** to insert a new line. When the
completion menu is open, **Arrow Up/Down** changes the selection, **Enter** or
**Tab** inserts the selected command or Skill, and **Escape** closes the menu.

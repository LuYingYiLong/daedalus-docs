Read the Conversation Timeline
==============================

The timeline is more than a chat transcript. It is a readable record of what
the agent tried, what changed, and what still needs your decision.

What you may see
----------------

**User and assistant messages**
   Messages support Markdown, code blocks, links to workspace resources, and
   selectable text. Copy a message or copy all of its text when you need to
   move an explanation into an issue or note.

**Thinking and status**
   A run can show that the assistant is processing, waiting, stopped, or
   reconnecting. Status details help you distinguish “still working” from
   “waiting for approval.”

**Tool activity**
   Each visible tool item describes an action such as reading a file, editing
   text, searching the web, running a command, or inspecting Godot. Expand an
   item when you need its inputs and result.

**File changes**
   File edits can include an inline diff. Review the added and removed lines
   before accepting the overall result.

**Plans and Todo progress**
   Plan and Goal runs can show a plan, current step, completed steps, and files
   changed. A progress indicator is a guide to the run, not proof that the
   feature works.

**Terminal output and diagnostics**
   Read command output, exit status, Godot diagnostics, and warnings. A
   missing validator is shown as missing; it is not silently treated as a
   pass.

Useful timeline actions
-----------------------

Search the conversation with **Find in conversation**. Move between user turns
with the conversation navigator. If you are far from the newest response, use
**Scroll to bottom** to return to the active run.

Select text in a message and choose **Ask AI** to ask a focused follow-up about
that text. You can add an optional note, attach the selection to context, or
delete an old selection question. This is useful for asking “What does this
error mean?” without copying a long passage into a new prompt.

Edit and resend or fork
-----------------------

Use **Edit and resend** on a user message when the request itself was wrong.
Use **Fork from here** when you want to try another model, constraint, or
approach while keeping the original session unchanged. A fork records where it
came from so you can return to the source session.

Rich results
------------

Markdown code blocks can be copied or exported as files. Mermaid diagrams can
be rendered, viewed as source, copied, or exported as PNG. Image-generation
results can be inspected in the timeline when the selected model and Skill
support them.

Context shown on messages
-------------------------

The context strip can show files, folders, selected lines, pasted text,
review comments, web elements, or selected message text. Expand the strip when
you need to confirm exactly what the agent received.

Context compression
-------------------

When a session grows large, **Compress chat** can replace eligible history
with a structured, recoverable summary. Compression is unavailable while a
message is sending or a run is active, and protected blocks are kept. Check
the context estimate after compression before continuing a complex task.

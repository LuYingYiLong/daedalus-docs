Add Context Without Overloading the Session
===========================================

The agent can work from the workspace boundary, the conversation, and
additional context you explicitly attach. Good context is specific enough to
answer the question without filling the model's budget with unrelated files.

Attach context
--------------

From the composer, add:

* individual files when you know the implementation location;
* a folder when several files form one small feature;
* images when the task depends on a visual reference or captured result.

You can also refer to a path in the workspace, a Godot scene, or a resource in
your request. Keep the path inside the selected workspace and use Godot's
``res://`` form when it makes the target unambiguous.

Context budget
--------------

Long histories and large attachments consume the selected model's context
budget. Studio exposes an estimate with categories such as system and tools,
history, current message, additional context, reserved output, and safety
margin.

If the estimate is high:

#. Remove attachments that do not affect the task.
#. Ask for a focused inspection instead of attaching a whole repository.
#. Start a fresh session when the task has changed substantially.
#. Use session compression when Studio makes it available and the older
   details are no longer needed verbatim.

Compression summarizes eligible history; it does not make an active run safe
to interrupt or grant access to files that were not already in scope.

Protect private context
-----------------------

Do not attach API keys, MCP secrets, private certificates, or unrelated
personal documents. Review pasted logs for local usernames, absolute paths,
tokens, and project-specific secrets before sharing them with a provider.

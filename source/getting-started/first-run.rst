Complete First-Run Setup
========================

The setup wizard prepares the pieces that make Godot work useful. Every step
is optional and can be changed later in Settings, but configuring a provider
and Godot executable now makes the first session smoother.

Setup steps
-----------

Provider
   Choose a provider, enter its API key, test the connection, and select a
   model. The selected model becomes the default for new conversations.

Godot executable
   Select the Godot executable Studio should use for project validation,
   launch actions, and version-aware documentation. Studio validates the
   selected executable before saving it.

Offline documentation
   Install an official ``godot-docs`` branch and enable offline search. This
   lets the agent look up unfamiliar Godot APIs without depending on web
   access. The download is optional and can be managed later in
   **Settings > Documentation**.

Godot Bridge
   Select one or more Godot projects and install the bundled editor plugin.
   Plugin changes may be staged until Godot closes. The full editor bridge
   requires Godot 4.5 or newer.

If you skip a step
------------------

You can enter Studio after skipping optional setup. Use the corresponding
Settings page when you are ready:

* **Provider** and **Default model** configure model access.
* **Godot Projects** manages project detection and the bundled plugin.
* **Documentation** manages offline Godot documentation and its search index.

If a setup operation fails, record the version shown in **Settings > About**,
the step that failed, and the sanitized error message. Do not include an API
key or a custom MCP secret in a bug report.

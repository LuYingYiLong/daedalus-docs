Set Up Godot Integration
========================

Requirements
------------

The bundled Godot editor integration requires Godot 4.5 or newer. Studio can
still hold a workspace and work with ordinary files without a connected Godot
editor, but editor-aware tools and the bundled plugin depend on a compatible
Godot installation.

Select the Godot executable
---------------------------

During first-run setup or from **Settings > General**, select the Godot
executable that Studio should use for project validation and launch actions.
Studio checks the executable and shows the detected version. If the executable
cannot be validated, select the correct binary for your platform and confirm
that it is not blocked or incomplete.

Install the Bridge plugin
-------------------------

#. Open **Settings > Godot Projects**.
#. Add or rescan the project you want to connect.
#. Confirm that the project targets Godot 4.5 or newer.
#. Select the project and choose **Install**.
#. Close and reopen Godot if Studio reports that a plugin change is pending.

The plugin is a lightweight editor client. It connects the Godot editor to
Daedalus tools and diagnostics; it does not replace the project files or the
Godot editor itself.

Connection checklist
--------------------

If editor-aware tools are unavailable:

* make sure the selected executable points to the expected Godot version;
* open the intended project in that Godot installation;
* confirm the plugin is installed for that project;
* restart Godot after a staged plugin update;
* check the project and Studio versions in **Settings > About** and the Godot
  project status page.

Static project tools can still inspect validated files when no editor is
connected. The agent should report when a requested operation needs a live
editor capability that is not available.

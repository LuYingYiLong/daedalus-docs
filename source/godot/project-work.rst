Work on a Godot Project
=======================

Two complementary tool surfaces are available. The agent chooses between
them based on the task and the capabilities advertised by the connected
project.

Static project tools
--------------------

Static tools operate on validated workspace paths. They are useful for:

* inspecting or editing scripts, shaders, scenes, and resources;
* reading project settings, Input Map, Autoloads, export presets, and
  dependencies;
* finding references and analyzing project structure;
* running Godot headless checks;
* reading LSP and diagnostic information.

These tools do not require an editor window to be focused. Their paths remain
inside the workspace boundary.

Common static tasks
~~~~~~~~~~~~~~~~~~~

The agent can read a project summary, browse project files, list scenes and
scripts, search project text, resolve resource UIDs, inspect project settings,
read project logs, validate scene/script references, and read or write text
files through the same workspace boundary. These are good first steps when you
are not sure where a bug lives.

Scene and resource changes
~~~~~~~~~~~~~~~~~~~~~~~~~~

For scene work, Studio can propose or create a scene, add a node, attach a
script, connect a signal, apply a scene patch, save a scene variant, and patch
an open scene through the editor bridge. For resource work, it can inspect
resources, re-save resources, load a sprite texture, or update project UIDs
when the relevant capability is available.

Ask for a proposal before a structural scene change. A request such as “add a
node” is not enough by itself; name the parent node, node type, desired name,
properties, script, and signal connections when those details matter.

Project settings and editor state
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Studio can read project settings, propose and apply a setting, or propose and
remove a setting. It can also read editor settings summaries, editor
configuration files, the current editor project state, selected nodes, and
recent projects. Editor state is useful context, but it is not a substitute
for checking the saved project files.

Editor Bridge tools
-------------------

When the Godot Daedalus plugin is connected, editor bridge tools can provide
live editor context and typed operations for capabilities such as:

* scene and resource inspection or patching;
* animation, TileMap/GridMap, navigation, and audio operations;
* editor navigation and safe previews;
* reimport and bake actions where supported by the project and plugin.

The available set is capability-dependent. If a tool is not advertised, ask
the agent to use the static equivalent or explain what must be enabled.

Editor-aware previews and operations can include scene-view capture, animation,
TileMap/GridMap, navigation, audio buses, resource loading, reimport, mesh
library export, and bake actions. These operations can be more powerful than
editing a text file, so the agent should show a proposal or request approval
before applying them.

Verification loop
-----------------

For a project change, a useful request follows this loop:

#. Inspect the relevant scene, script, resource, or project setting.
#. Ask for a plan or proposal when the change is structural.
#. Review the patch and approve it when the scope is correct.
#. Run a targeted Godot or project check.
#. Inspect diagnostics and the final diff.

Godot LSP and diagnostics are read-only inputs. The first DAP integration is
also read-only; it does not expose launch, continue, pause, stepping,
breakpoints, evaluation, or arbitrary runtime method calls.

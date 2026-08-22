Plugins
=======

Plugins are optional extensions that add native Studio capabilities or connect
to the Harness runtime. Manage them from **Settings > Plugins**. A plugin is
separate from the Godot Bridge plugin managed on the **Godot Projects** page.

Plugin catalog
--------------

Select a plugin to inspect its details before installing or enabling it. The
detail view can show:

* features and changelog information;
* compatibility classification and compatibility notes;
* declared entry points and capabilities;
* trust state and package fingerprint;
* the native or Harness runtime it uses; and
* runtime logs and an explanation of what the plugin can change.

Compatibility classifications include **Daedalus Native**, **Harness Bundle**,
**Harness Client**, **Daedalus + Harness**, **Metadata only**, and
**Unsupported**. An unsupported package cannot run in the current Studio
runtime.

Install or update a plugin
--------------------------

Select **Add plugin** and choose a supported source:

* a local folder;
* a ``.tgz`` tarball;
* an npm package; or
* a Git repository.

Provide an exact version, repository URL, or commit SHA when the selected
source requires it. During installation, Studio copies the package, calculates
its hash, and statically inspects it. Installation scripts and plugin code are
not executed as part of this inspection.

Use **Update plugin** from the plugin details when a newer package is
available. Studio keeps previous versions so that you can review or roll back
when necessary.

Trust and enable a plugin
-------------------------

A plugin can be **Trusted**, **Review required**, or **Disabled**. Before
trusting it, review the README, compatibility notes, declared capabilities,
source, and fingerprint. A plugin that requires review cannot be enabled until
you explicitly trust it.

Trust is not blanket permission. Tool policy and approval still control actual
calls. Enable or disable the plugin for the active profile from its details
view. Trusted plugins start when one of their capabilities is first used.

Runtime maintenance
-------------------

The plugin details view provides actions for starting or disabling a runtime,
restarting it, and inspecting runtime logs. If a plugin is quarantined, use
**Clear quarantine and retry** only after addressing the reported failure.
**Previous versions** and **Rollback** help return to a known version.

Installing plugin dependencies can require explicit network confirmation. Check
the dependency source and expected changes before allowing network access. For
Harness Bundle plugins, the preview action lets you inspect the bundle before
using it.

Remove a plugin
---------------

**Remove** deletes the plugin package from Daedalus-managed storage. This is
different from disabling a plugin: disabling keeps the package installed but
excludes it from the active profile. Remove a package only when you no longer
need it or have another copy available.

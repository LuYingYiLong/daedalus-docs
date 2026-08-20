Workspace Tools in Settings
===========================

Several Settings pages control how Studio prepares and maintains project
workspaces. They do not replace the normal workspace and session controls;
they define reusable defaults for them.

Development environments
------------------------

An environment profile is a named setup for a project or managed worktree.
It can contain:

* a setup script that prepares dependencies or generated files;
* whether the setup may use the network;
* named terminal actions for common tasks;
* whether each action may use the network.

Use **Settings > Environments** to create or edit a profile for a source
folder. Before trusting it, read every script and command. Studio describes
the sandbox: with network disabled, scripts can write only to the worktree and
isolated cache; with network enabled, the script can reach the network while
the filesystem boundary still applies.

Trusting an environment allows its commands to be used as intended. It does
not make every command in the project trustworthy, and it does not grant the
agent permission to leave the workspace.

Git worktrees
-------------

A Git worktree is a second checkout of the same repository. It lets you keep
one session's experiment separate from the files in your main checkout.

Use **Settings > Worktrees** to:

* choose the root directory where managed worktrees are created;
* restore the default worktree root;
* fetch and prune remotes before creating a worktree;
* set a limit for managed session worktrees;
* automatically remove old archived managed worktrees;
* inspect managed, permanent, and orphaned worktrees;
* repair a worktree registration or create/delete a permanent worktree.

Automatic cleanup removes old managed session worktrees first. Permanent
worktrees are not removed automatically. Deletion requires a clean worktree
with no active task or terminal and no unnamed commits, so save or commit
anything you need before deleting it.

Hooks
-----

Hooks are lifecycle commands stored in a project or user configuration. They
can run when a project or session event occurs, so treat a Hook as a script
that may execute without you typing a terminal command at that moment.

In **Settings > Hooks** you can choose a configuration source, create a
template, format or reload the JSON, review configured commands, and inspect
recent Hook runs. Saving a file never trusts commands automatically. Review
each event, matcher, failure policy, and permission scope, then trust only the
commands you recognize.

Studio shows the Hook sandbox in the review panel: the target source folder is
writable, other sources are read-only, and network access is disabled unless
the configuration explicitly permits it. A Hook's fingerprint helps you
notice when its command changed. If the JSON is invalid, fix it in the editor
before trying to enable the Hook.

Godot Projects
--------------

**Settings > Godot Projects** is the project-level view of the Bridge plugin.
Use **Add project** or **Rescan** to let Studio find projects, then inspect the
Godot version, plugin version, and status for each project.

Common statuses mean:

* **Not installed** — the Bridge is not present;
* **Current** — the bundled plugin matches the Studio release;
* **Outdated** or **Modified** — review before upgrading or repairing;
* **Pending** or **Waiting for Godot** — Studio is waiting for Godot to close;
* **Failed** — the operation needs attention or a retry.

Use **Install**, **Upgrade**, **Upgrade all**, **Repair**, **Uninstall**, or
**Retry pending** only after checking which projects are selected. Plugin
changes are staged safely and may apply after all Godot editors exit.

Offline documentation
---------------------

The Documentation page installs or imports a local ``godot-docs`` source and
builds a searchable local index. You can download an official branch from the
Godot documentation repository or choose an extracted directory/ZIP archive.
The original local source is not modified.

Use **Check index** to verify SQLite integrity, metadata, counts, and hashes.
Use **Repair index** when the status is degraded or unavailable. Repair may
use a previous healthy index, a cached source, a local source, or a confirmed
network download. Studio validates the rebuilt index before activating it.

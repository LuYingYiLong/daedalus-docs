Add and Manage Workspaces
=========================

A workspace is the project boundary used by Studio's file, Git, Godot, and
terminal tools. The agent cannot use a path outside the allowed workspace
roots simply because a model requested it.

Add a workspace
---------------

#. Open the workspace menu in the composer or workspace sidebar.
#. Choose **Add workspace**.
#. Select the project directory.
#. Give the workspace a recognizable name and save it.

For a Godot project, choose the directory containing ``project.godot``. Studio
can then resolve Godot project paths such as ``res://scripts/player.gd`` while
keeping the real filesystem path inside the configured root.

Multi-root projects
-------------------

A workspace can contain more than one source folder. This is useful when a
project is split across a game repository, a shared package, and a tools
repository. Mark the folder that identifies the project as **Primary**, and
keep each additional folder explicit so the agent knows which paths are in
scope.

If you add the same folder twice, Studio rejects the duplicate. Removing a
source folder from the workspace does not delete that folder from disk, but it
does change which files future tools can see.

Workspace tree
--------------

The workspace tree helps you find sessions by state. Depending on the current
activity, you may see pinned, recent, running, archived, or unread sessions.
An unread indicator means a run completed or changed state while you were
looking at another session.

Renaming and appearance
-----------------------

Use workspace actions to rename a workspace or change its icon and color. The
appearance is organizational metadata; it does not change the project on
disk.

Removing a workspace
--------------------

Removing a workspace from Studio removes its registration from the workspace
tree and does not delete project files. Before deleting one, check its session
policy: sessions may be moved to another matching project when possible, but
unmatched sessions may be permanently deleted. Export important sessions or
move them to a matching workspace before confirming.

Git and worktrees
-----------------

Studio can show Git changes for the current workspace and provides a diff
review surface. If you use Git worktrees, the **Worktrees** Settings page can
manage worktree preferences and cleanup behavior. Review the selected root and
automatic deletion options carefully before enabling cleanup.

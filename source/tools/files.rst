Browse and Edit Files
=====================

The **Files** panel is a small project file browser and text editor. It is
useful when you want to inspect a file yourself, give a precise file to the
agent, or make a small manual correction without leaving Studio.

Open a file
-----------

#. Open a **Files** panel from the side or bottom dock.
#. Choose the source folder if the workspace has more than one.
#. Expand folders in the tree or search for a file or path.
#. Select a text file to open it in a tab.

You can double-click a file to open it. A tab that is not pinned is treated as
a preview tab and may be reused when you open another file. Pin a tab when you
want to keep it open.

Edit and save
-------------

The editor provides familiar actions such as undo, redo, cut, copy, paste,
select all, and save. ``Ctrl+S`` saves the active file on Windows. Use **Save
as** when you want a new path instead of overwriting the current file.

Studio can edit UTF-8 text files up to 2 MiB in the Files panel. Binary files
and larger files are shown as not editable; use **Open in external app** when
that is the right tool.

If the file changed outside Studio, Studio shows a conflict. Reload the disk
version if the external change is correct, or save your draft as a new file if
you need to preserve both versions. Do not overwrite a conflict without
checking which copy contains the changes you want.

Use files as context
--------------------

Right-click a file and choose **Add to context**, or select code and use
**Add to context**. The selected file, range, or note is then visible in the
composer's context strip. This is often more precise than telling the agent to
read an entire folder.

You can also comment on selected code. A comment is a focused instruction for
the agent, for example “Why is this signal never disconnected?” or “Change
this to use the project input action.”

Paths and external apps
-----------------------

The file menu can copy an absolute path or a workspace-relative path. Markdown
links in the conversation can open a file in the current workspace app, open
it with another configured target, save it, or reveal it in File Explorer.
Studio refuses to open a linked file outside the current source folders.

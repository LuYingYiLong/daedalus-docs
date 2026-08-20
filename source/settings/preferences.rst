Preferences and Maintenance
===========================

The Settings window also includes preferences that shape how Studio feels and
how it keeps your workspace organized.

General and appearance
----------------------

Use **General** and **Appearance** to configure interface behavior, fonts,
theme, Godot defaults, notifications, and other client preferences. These
preferences affect Studio's presentation and local behavior; they do not
rewrite your Godot project.

General settings can also control whether Studio checks for updates, minimizes
to the system tray when closed, and which Godot executable is used when a
workspace does not provide its own path. A workspace-specific path takes
precedence over the general default. You can also choose the display language
or follow the system default. General settings also include whether to show a
system notification when a background AI reply finishes and whether to show a
next-step suggestion in the empty composer.

Appearance settings control the application theme and accent color, dynamic
effects, UI font size, body font, and code font used by the editor and
terminal. If text is hard to read, change the font size rather than adding
formatting instructions to every request.

Keyboard shortcuts
------------------

Open **Keyboard shortcuts** to search the available actions and replace a
binding. Studio checks for conflicts and requires a modifier for printable
keys. The default Windows bindings are listed in
:doc:`../reference/shortcuts`.

Personalization
---------------

The **Personalization** page lets you adjust user, Git commit, and command
review prompts. Keep instructions specific and avoid putting secrets or
instructions that would weaken review into these fields.

The Git commit prompt affects the optional commit-message model. The command
review prompt affects how free terminal commands are reviewed in Auto-safe
mode. Keep these prompts short and specific; they guide review but do not
replace the tool policy.

The general user prompt is appended to new AI requests. It is a good place for
stable preferences such as “use GDScript 4 style” or “explain risky changes
before editing.” Do not put API keys or a request-specific requirement here.

Web Search
----------

The **Search** page is a separate switch for current-information lookups. It
does not turn every model into a search model and it does not change the
conversation's normal model selection. See :doc:`providers` for the result
count, keyword breadth, and billing trade-off.

Archived sessions and import
----------------------------

Use **Archived sessions** to find, filter, reopen, or remove old conversations.
Use **Import** for supported session import flows. Review imported content
before continuing it in a write-capable mode; imported prompts and attachments
may contain stale paths or assumptions.

Statistics and About
--------------------

**Statistics** helps you understand usage and context pressure over a selected
range. **About** shows application and backend information useful for support
and compatibility checks.

Data reset
----------

If you need to reset local application data, first export or back up anything
you need and read :doc:`../reference/privacy`. A reset can remove sessions,
preferences, or other local state and should not be used as a first response to
a single failed run.

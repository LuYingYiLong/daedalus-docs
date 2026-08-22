Preferences and Maintenance
===========================

The Settings window also includes preferences that shape how Studio feels and
how it keeps your workspace organized.

General
-------

Use **Settings > General** for language and general Studio behavior. These
preferences affect Studio's local behavior; they do not rewrite your Godot
project.

General settings include:

* the display language, with a system-default option;
* a system notification when a background AI reply finishes;
* next-step suggestions in the empty composer;
* automatic update checks; and
* minimizing Studio to the system tray when the window closes.

Theme controls and the global Godot executable are no longer on this page.
Use **Settings > Appearance** for the former and **Settings > Development
environments** for the latter.

Appearance
----------

Use **Settings > Appearance** to control the application theme mode, accent
color, dynamic effects, UI font size, body font, code font, and code font size.
These options change how Studio is presented without changing the project.
If text is hard to read, change the font size rather than adding formatting
instructions to every request.

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

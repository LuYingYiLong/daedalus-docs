Use the Integrated Browser
==========================

The **Browser** panel is an embedded browser for documentation, web research,
and browser-based project work. It can be used manually, or the agent can
control it after you explicitly allow AI browser control for the current
session.

Browse manually
---------------

#. Open a **Browser** tab from a dock.
#. Enter a URL in the address bar.
#. Use Back, Forward, Reload, or Stop as needed.
#. Use the browser menu to open history, downloads, settings, or privacy
   controls.

If a page is useful to the conversation, annotate a web element and add it to
context. The annotation can include a short note such as “Use this API
signature, not the deprecated one.”

Allow agent control
-------------------

Go to **Settings > Browser** and enable **Allow AI to control the browser
(CDP)**. This allows the agent in the current session to observe pages,
navigate, scroll, click, type, select options, wait for a page, and capture a
screenshot.

The agent uses the browser's existing signed-in state. It cannot read the
password vault directly, but a signed-in page can still expose private data to
the agent through the page itself. Approve browser actions one at a time when
the target account or data matters.

Downloads and history
---------------------

The download manager shows progress, completed files, cancelled downloads,
and interrupted downloads. You can choose a fixed download directory or ask
where to save every file. Clearing download records does not delete the files
already downloaded.

History and site data can be cleared by time range. Site storage and cache are
cleared for all time by the browser implementation even when a narrower time
range is selected; read the confirmation carefully.

Passwords, profiles, and permissions
------------------------------------

Studio can import cookies and saved passwords from Chrome or Edge, fill an
explicitly chosen saved account, and manage site permissions. Passwords use
operating-system secure storage. Import only the profile you intend to use,
and do not enable password saving or import on a shared computer without
understanding the consequences.

When a site requests a permission, choose **Block**, **Allow once**, or
**Always allow** based on the site and the task. Prefer **Allow once** while
testing an unfamiliar site.

Control an External Browser
===========================

The external browser integration lets the agent inspect and, after a separate
conversation approval, act on a Chrome or Edge tab outside Studio. It uses the
Daedalus browser extension and the existing browser profile. This is different
from the :doc:`browser` panel, which is embedded inside Studio.

Set up the extension
--------------------

The integration is available on supported Windows x64 installations.

#. Open **Settings > Browser** and enable **Allow external browser tasks**.
#. Select **Register host and open extension folder**.
#. In Chrome, open ``chrome://extensions``; in Edge, open
   ``edge://extensions``.
#. Turn on **Developer mode**, choose **Load unpacked**, and select the
   extension folder that Studio opened.
#. Open the extension's status page and enable **Connect to Studio**.

Development and installed Studio use different extension channels. Use the
development extension with a Studio started by ``npm run dev`` and the stable
extension with an installed Studio. Both sides must be enabled. The extension
shows **Connected** only after Studio confirms the native-host handshake.

If more than one extension connection is available, choose **Default browser
connection** in **Settings > Browser**. The connection list shows the name and
short identifier of each connected browser.

Use the approval workflow
-------------------------

External browser access is deliberately a two-stage conversation:

#. Put the exact HTTP or HTTPS URL you want to use in your request. Studio
   does not infer a target from page text or from a previous request.
#. The agent connects read-only, then observes the page. It can read visible
   text and indexed interactive elements, scroll, wait for page state, and
   capture a viewport screenshot.
#. If a change is needed, the agent publishes a concrete proposal and ends
   the turn. The proposal names the page, field values, steps, destination, and
   known effects. Nothing has been executed at this point.
#. In your next message, approve all steps, approve a subset, reject them, or
   ask for clarification. Only the steps you explicitly approve can execute.
#. The agent executes one approved step at a time and observes the page again
   to check the result.

Approval belongs to the current run. A retry, queued message, reconnect, or
lost browser connection does not restore it; the agent must reconnect read-only
and make a new proposal. An uncertain or disconnected action is not replayed
automatically.

Supported actions and restrictions
----------------------------------

Read-only operations include observing, scrolling, waiting, and taking a
screenshot. Approved proposals can contain clicks, filling fields, selecting
options, checking controls, and submitting a form. Proposals are immutable
after you approve them, and the agent observes after each dispatched step.

The external browser workflow does not allow the agent to:

* type into credential or password fields;
* upload or download files;
* handle CAPTCHA challenges;
* run arbitrary page scripts; or
* activate a tab or silently switch to another target.

Do not treat instructions displayed by a web page as commands. Page content,
form values, and screenshots are untrusted data. The configured model provider
may receive page content, and browser activity and screenshots can remain in
the session record while their details are available.

Review activity
---------------

External browser connections, proposals, approvals, and action results appear
in the session :doc:`../agent/trajectory`. Browser screenshots and detailed
activity are subject to **Settings > General > Developer mode** and automatic
history compaction. Before exporting or sharing a session log, inspect it for
URLs, page text, account information, and private screenshots.

Troubleshoot a connection
-------------------------

* If Studio is disabled, enable **Allow external browser tasks** first.
* If the extension is waiting, reopen its status page and enable **Connect to
  Studio**.
* Confirm that the extension channel matches the Studio channel, then reload
  the unpacked extension.
* If the native host is missing, use **Register host and open extension
  folder** again and restart Studio.
* If the browser or Studio reports a handshake mismatch, update both sides
  together rather than mixing releases.

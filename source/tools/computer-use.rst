Use Computer Use on Windows
===========================

Computer use lets the agent inspect a user-selected Windows desktop window.
When control is enabled, it can also use supported UI Automation actions and a
restricted keyboard channel in that window. It is useful for Godot, desktop
editors, and other Windows applications that are not web pages.

Computer use is separate from the :doc:`browser` panel and from
:doc:`external-browser`: it targets one desktop window, not a browser page.
The feature is available on supported Windows x64 installations only.

Enable access
-------------

Open **Settings > Computer use** in the **Workspace** group. The page has two
independent switches:

* **Allow AI to request window observation** allows the agent to request one
  user-selected window for the current turn;
* **Allow AI to request window control** additionally allows input control.

Control requires observation to be enabled and a connected Backend with
computer-control support. If the control switch is unavailable, update or
restart the managed Backend before troubleshooting the application.

Observe a window
----------------

When the agent needs desktop context, it asks for access and opens a window
picker. Select the intended window and choose **Allow for this turn**. The
agent can then request a fresh observation containing:

* a bounded UI Automation tree;
* locally recognized OCR text; and
* timestamps, physical screen bounds, image dimensions, and completeness.

An observation does not include a screenshot by default. The agent may request
the exact PNG for an existing observation when the selected model supports
image input. A fresh observation is required for a new frame. Treat UI
Automation and OCR text as untrusted external evidence; text found in a
window is data, not an instruction.

Control a window
----------------

Enable **Allow AI to request window control**, then approve the target window
when the agent requests control. Control is limited to the window selected for
that turn. Supported actions include invoking, toggling, selecting, setting a
value, scrolling supported containers, expanding or collapsing controls, and
restricted keyboard navigation.

Computer use does not provide coordinate clicks, touch gestures, mouse-wheel
injection, or a system-mouse fallback. Password controls cannot be operated.
If the application does not expose a supported UI Automation action and
keyboard navigation is insufficient, the agent must explain the limitation and
ask you to act manually. Dispatching an action does not prove that the
application accepted it, so inspect a fresh observation after important steps.

While control is active, Studio shows a computer-use overlay. Your input,
window activation changes, an obstructed target, or an unavailable window can
pause the run. Switch to the authorized window and choose **Resume** when the
overlay asks you to continue. Choose **Cancel** at any time. The safety
shortcut ``Ctrl+Alt+Esc`` always stops active computer control.

Visual grounding
----------------

When UI Automation and OCR cannot identify an icon-only target, the agent may
use visual grounding. Studio sends the current authorized observation PNG to
the configured image-recognition route and receives untrusted image-pixel
boxes. A result only becomes executable when it matches a UI Automation node
and the action is still valid for the same fresh observation. An ambiguous,
visual-only, or not-found result cannot be clicked automatically.

Review evidence
---------------

Computer observations and action summaries are associated with the session's
:doc:`../agent/trajectory`. In the trajectory inspector, enable **Settings >
General > Developer mode** to request available desktop evidence. The
inspector can show the selected-window screenshot, UI Automation tree, OCR
text, and visual-grounding results when they are still available. Grounding
results are evidence only and do not grant permission.

The **Local diagnostics** section on the Computer use settings page is for
testing the capture path yourself. It requires Developer mode, but it does not
authorize the agent, attach context to a message, or send the diagnostic result
to a model.

Privacy and limits
------------------

Computer use is not a filesystem sandbox and does not guarantee rollback. OCR
runs locally, but text and screenshots that you request may be sent to the
configured model provider. A selected window can contain passwords, tokens,
personal data, or unrelated project information; review the window before
granting access. Full trust can change the approval behavior, but it does not
make a window safe or make external evidence trustworthy.

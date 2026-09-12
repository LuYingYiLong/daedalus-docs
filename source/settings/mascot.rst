Use the Desktop Pet
===================

Daedalus Studio includes a small local desktop pet, called the mascot. It is
shown on the new-session home and, when a session is open, near the chat
composer. The mascot is visual feedback only: it does not change the model,
the project, or the permissions of a run.

Show or hide the mascot
-----------------------

Open **Settings > Personalization > Mascot**. The **Show mascot** switch
controls both placements:

* the mascot above the greeting on the new-session home; and
* the mascot at the lower-right of the active session's composer.

The setting is stored as a Studio preference and applies to future renders of
the home and session surfaces. It does not add anything to your Godot project.

Change the size
---------------

Use **Mascot size** on the same page to adjust the scale from **60%** to
**140%**. The default is **100%**. The size applies to both the new-session
home and the session composer.

Interact with it
----------------

When the mascot is idle, the main star accepts a mouse drag. Press and move
over the star with the left, middle, or right mouse button to pet it. The
mascot briefly changes expression, then returns to its normal idle state when
you release the button.

The mascot is deliberately kept out of the layout's main interaction path. In
the composer it floats above the lower edge and the message list reserves
enough space for the last message to remain readable. It may be temporarily
hidden while a full-screen dock or an approval, budget, or plan-decision
surface occupies that area.

Activity states
---------------

The mascot changes its appearance in response to local Studio state:

.. list-table::
   :header-rows: 1
   :widths: 20 80

   * - State
     - Meaning
   * - Idle
     - The session is not currently sending a request. The mascot breathes,
       the planet orbits, and the gaze can follow the pointer when the window
       is focused.
   * - Thinking
     - Studio is sending a request for the active session.
   * - Enjoying
     - You are petting the mascot.
   * - Sleeping
     - The mascot has been idle for about three minutes. Mouse, keyboard, or
       window activity wakes it.
   * - Disconnected
     - The Studio-to-Backend connection is unavailable. The mascot returns to
       live activity after reconnection.

Execution feedback can also use waiting, executing, completed, and failed
visual states when the corresponding runtime status is available. A completed
animation plays once and returns to idle; a failure state remains visible
until the runtime returns to automatic status.

Normal session requests currently use the idle and thinking states. The
additional execution states depend on the runtime integration used by the
current build.

Reduced motion
--------------

When Windows asks applications to reduce motion, Studio disables the mascot's
looping animations and transitions while retaining the state appearance. This
setting is controlled by the operating system's accessibility preference.

Troubleshooting
---------------

If the mascot is missing, check **Settings > Personalization > Show mascot**.
If it is visible on the home but not in a session, check whether a dock is in
full-screen mode or Studio is currently showing an approval or plan-decision
surface. A disconnected mascot indicates a Backend connection problem; use
the normal Backend reconnect or restart flow before investigating the model
provider.

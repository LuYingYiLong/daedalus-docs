Install Daedalus Studio
=======================

Requirements
------------

The supported desktop target is Windows 10 or Windows 11 on x64. To use the
full Godot integration, install Godot 4.5 or newer as well.

You also need an account and API key for at least one model provider before
you can run an AI conversation. The provider may be one of the built-in
providers or a compatible custom provider.

Download and install
--------------------

#. Download the latest Studio installer from the
   `Daedalus Studio releases page
   <https://github.com/LuYingYiLong/daedalus-studio/releases/latest>`_.
#. Run ``Daedalus-Studio-Setup-<version>.exe``.
#. Launch Studio and wait for the first startup check to finish. Studio
   verifies and installs the bundled backend as part of this process.
#. Continue through the setup wizard described in
   :doc:`first-run`.

Studio manages the backend it ships with. A normal installation does not
require a global Node.js or npm installation.

Where data is stored
--------------------

Studio keeps application window preferences in Electron's user-data
directory. Daedalus runtime data is stored under::

   %USERPROFILE%\\.daedalus

This directory can contain sessions, attachments, logs, workspace settings,
provider metadata, and personal Skills. API keys are stored through the
operating-system credential store rather than in ordinary Daedalus JSON
configuration.

Treat this directory as private. See :doc:`../reference/privacy` before
sharing diagnostics or backups.

Updates and compatibility
-------------------------

Use Studio's own update flow when it offers an update. Studio checks the
compatibility of the desktop client, backend, and Godot Bridge before startup;
if a managed component is unhealthy, it can repair or roll back the component
instead of silently continuing with an incompatible version.

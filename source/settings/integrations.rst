Integrations: MCP, Skills, Browser, and Documentation
======================================================

Integrations extend what Studio can inspect or do. Enable only the services
you understand and keep their scope narrow.

MCP servers
-----------

Use **Settings > MCP Servers** to add or manage custom MCP servers. Before
enabling a server, review:

* its URL or local command;
* environment variables and headers;
* the tools it exposes and their likely side effects;
* whether calls will require approval;
* whether the server is local, trusted, and maintained by someone you trust.

MCP secrets are sensitive. Keep them in the secret storage supported by the
configuration flow. Do not put them in ordinary settings files or logs.

The MCP list shows whether a server is **Connected**, **Starting**, **Failed**,
or **Disabled**, and how many tools it exposes. A failed connection does not
necessarily mean the server's command is wrong; check its URL, transport,
environment, and startup output. Deleting a server also removes its stored
secrets, so recreate the configuration only when you intend to.

Skills
------

Skills provide reusable instructions and workflows. Project and personal
Skills are instructions, not permissions: they cannot grant tools, escape the
workspace, or bypass the approval policy.

Manage Skills from **Settings > Skills**. A project Skill belongs to the
workspace and a personal Skill is available to you across projects. Review a
Skill's contents before enabling it, especially when it asks for external
services or broad file access.

Skills can be built-in, personal, or project-scoped. You can install one from
a folder or ZIP, import available global Codex Skills, edit its ``SKILL.md``,
and delete it. Project Skills are stored under the selected source folder's
``.github/skills`` directory and therefore appear as project changes. Personal
Skills live in your user directory and are available across projects.

Studio validates the Skill's frontmatter, instructions, and file size before
saving. An invalid Skill is not a usable Skill. The Skill can describe a
workflow, but it cannot grant itself permissions or bypass approvals.

Browser
-------

The integrated browser can be configured from **Settings > Browser**. Browser
automation is an external side effect: review the target page, credentials,
downloads, and actions before approving a run. Keep private browser profiles
separate from project work whenever possible.

Offline Godot documentation
---------------------------

Use **Settings > Documentation** to install an official Godot documentation
branch, build its local search index, enable search, repair an unhealthy index,
or remove a version you no longer need. Offline documentation is useful when
you want the agent to verify Godot APIs without web access.

Installation can download, extract, index, validate, and roll back. Let the
operation finish or use the provided cancellation action; do not manually
delete a partially indexed directory while Studio is running.

Development environments and hooks
----------------------------------

Development environments and Hooks have their own detailed guide in
:doc:`workspace-tools`. In both cases, treat setup scripts, lifecycle
commands, and hook commands as code execution. Review the command, network
behavior, failure policy, and files it can touch before enabling it.

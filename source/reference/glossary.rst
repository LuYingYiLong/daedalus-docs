Studio Glossary
===============

These words appear throughout Studio. Knowing the difference makes the UI
much easier to read.

Workspace
   The project or set of source folders that define the file and tool
   boundary.

Source folder
   One folder inside a workspace. A multi-root workspace can have several;
   one can be marked primary.

Session
   A durable conversation with its messages, attachments, plans, run history,
   and layout preferences.

Run
   One execution of a request inside a session.

Agent
   The model-driven process that reads context, chooses tools, and returns
   answers or changes.

Tool
   A named operation the agent can request, such as reading a file, running a
   command, or patching a scene.

Approval
   Your decision to allow or reject a tool, plan, or continuation.

Proposal
   A description of a write before it is applied. Proposals are useful because
   you can check the target and scope before changing the project.

Verification
   A check that runs after a change, such as a test, Godot diagnostic, scene
   run, or terminal command.

Context
   Information sent with a request, including workspace paths, files, folders,
   images, selected text, review comments, and web elements.

Skill
   Reusable instructions that help the agent follow a project or personal
   workflow. A Skill is not a permission grant.

MCP server
   An external tool service that Studio can connect to. Its tools are an
   additional trust boundary.

Editor Bridge
   The Godot plugin connection that exposes live editor context and
   capability-dependent editor operations.

Worktree
   A separate Git checkout used to isolate a session or a permanent line of
   work from the main checkout.

Dock
   A resizable side or bottom panel area that holds tabs such as Changes,
   Terminal, Files, and Browser.

Computer use
   A Windows-only capability that lets the agent observe, and optionally
   control, one user-selected desktop window for the current turn.

External browser
   A Chrome or Edge tab outside Studio that the agent can inspect through the
   Daedalus extension and change only through a separately approved proposal.

Trajectory
   The execution-level record for a session, including timing, tool activity,
   approvals, and diagnostic evidence that is still available.

Goal
   A longer-running objective with cycles, budget, progress, and a completion
   evaluation.

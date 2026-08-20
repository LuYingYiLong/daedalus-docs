Review Git Changes
==================

Studio does not replace Git, but it makes the current workspace state easier
to inspect and use as context for a conversation.

Open the Changes panel
----------------------

#. Select a Git workspace.
#. Open a **Changes** panel from the dock or from a session summary.
#. Choose the source folder when the workspace contains more than one.
#. Refresh the diff after an agent run or after an external Git operation.

The panel shows changed files and additions/deletions. Small text diffs load
first. Large files stay collapsed or may be truncated so that the review panel
remains responsive; open a file directly when you need more context.

Request a change on a line
--------------------------

In a diff, select the line that needs work and choose **Request changes on this
line**. Write what should change and add the comment. Studio attaches the
review comment to the next request so the agent can act on a precise location.

This is useful for review language such as:

* “Keep this public method compatible with existing callers.”
* “Add a test for the empty-array case.”
* “This file is unrelated to the task; revert it.”

Branches
--------

Use the branch action to search existing branches and check one out, or use
**Create & Checkout** to create a new branch. If the working tree has changes,
Studio asks whether to commit them before switching. Read the changed-file
summary before committing.

Commit and push
---------------

The **Commit or push** action can:

* commit the selected workspace changes;
* push changes to the configured remote;
* commit and push in one action.

You can enter a commit message or let the configured Git commit model draft
one from the diff. Treat a generated message as a draft: check that it says
what actually changed. Pushing is an external repository action, so review the
branch, files, remote, and approval prompt before confirming.

Good Git habits
---------------

Create a branch before a risky experiment, inspect the diff after every
agent-written batch, and commit only a coherent state. Git is your recovery
path when a Goal or manual edit does not produce the result you wanted.

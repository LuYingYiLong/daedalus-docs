Files, Git, Terminal, and Browser
=================================

Studio includes practical tools around the agent. You can use them yourself,
or let the agent request them inside a session.

.. toctree::
   :maxdepth: 2

   files
   git
   terminal
   browser

The important distinction is simple:

* a **read** operation tells you what is already there;
* a **propose** operation shows what a write would do;
* a **write** operation changes the project;
* a **verify** operation checks the result.

The approval mode and tool policy decide which operations pause for your
permission. You should still review the target and the result.

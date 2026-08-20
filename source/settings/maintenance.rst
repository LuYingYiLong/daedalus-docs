Maintenance, Usage, and Updates
===============================

These Settings pages help you understand, move, and maintain local Studio
data.

Statistics
----------

**Settings > Statistics** shows usage for the last 7 days, 30 days, 90 days,
or all time. It can include:

* number of LLM requests and the success rate;
* total token use and token activity over time;
* cache hit rate;
* average request duration and time to first token;
* token share by provider and model.

Use these numbers to compare configurations and notice a sudden increase in
cost or latency. They describe recorded runtime usage, not the quality of a
response. If the metrics database is unavailable, the page cannot reconstruct
the missing data from the conversation alone.

Archived sessions
-----------------

Open **Settings > Archived sessions** to search old sessions. Filter by all
sessions or sessions without a workspace, then choose **Unarchive** to return
one to active use. **Delete** removes an archived session permanently, and
**Delete all** removes every session matching the current filter. Use export or
another backup before deletion when the history matters.

Import session data
-------------------

The **Import** page accepts a SQLite file exported from Studio's workspace
tree. Choose the file, review the import action, and confirm. Studio can
restore the session and its available files; a missing external file may not
be recoverable from the SQLite file. Review imported prompts and paths before
continuing the session in a write-capable mode.

About and backend maintenance
-----------------------------

**Settings > About** shows Studio, backend, protocol, runtime, port, process,
log path, package, and license information. Use this page when reporting a
problem or checking that the coordinated components are compatible.

You can refresh backend details, restart the backend, repair it, check for
updates, update the backend, and open the update history. Repair stops and
reinstalls the backend bundled with the current Studio version, so an active
model response may be interrupted. Studio defers restart, repair, and update
actions while an AI response is running when it can do so safely.

Updates and release notes
-------------------------

Studio may update the client, backend, or both. It can download a differential
update and fall back to the full installer if the smaller download fails. A
failed automatic update can be retried or completed from the matching GitHub
Releases page. Read the changelog after updating so you know which behavior
changed.

Inspect a Session with the Trajectory View
===========================================

The Trajectory view is an execution-level record for a session. It helps you
understand what happened during a run without searching through every message
in the conversation timeline.

Open the Trajectory panel
-------------------------

Open a session, use the ``+`` action in a dock, and choose **Trajectory panel**.
The panel is session-specific, so select the session you want to inspect first.
If no session is selected, Studio asks you to open one. If the connected
Backend does not support trajectories, the panel reports that it is
unavailable.

Read the overview
-----------------

The panel summarizes the session with:

* total duration;
* number of turns;
* model calls and tool calls;
* input and output token totals; and
* error count.

The timing chart shows when records started and finished. Drag across the chart
to focus on a time range. The record list is grouped by turn and can include
prompts, model calls, thinking, tools, approvals, retries, steps, provider
reconnections, final responses, and errors.

Use the search field to find a ``requestId``, ``runId``, or ``toolCallId``. Use
**Load earlier records** when the first page does not contain the record you
need.

Inspect a record
----------------

Select a record to open its inspector. The inspector can show:

* record metadata, identifiers, timing, and token counts;
* prompt sections;
* the model request and response;
* fields that were redacted; and
* a compacted or hidden-details notice.

Structured request and response values are displayed as expandable JSON and
can be copied from the inspector. A status such as **Completed**, **Failed**,
**Cancelled**, or **Approval required** describes the record outcome; it does
not by itself prove that the overall task was correct.

Developer mode and compacted details
------------------------------------

The amount of body detail in the inspector follows **Settings > General >
Developer mode**. With developer mode disabled, Studio still exposes
structured record summaries but hides body details for inspection. Enable it
only when you need diagnostic context, and review the redaction indicators
before sharing a screenshot or exported log.

Records marked **Details compacted** no longer contain their original detail.
Automatic history compaction keeps full details for the most recent completed
turns and removes older thinking, tool arguments, and tool output. The
trajectory record and its key status or summary can remain after that cleanup.

Refresh and export
------------------

The panel updates while the active session produces new trajectory records and
reloads after a Backend reconnect. Use **Export session log** to save a JSON
record containing the session summary, trajectory records, and details that
are still available. Inspect the exported file for prompts, paths, identifiers,
and other private context before sharing it.

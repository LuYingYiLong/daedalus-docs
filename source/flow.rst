Build workflows with Flow
=========================

Flow is Studio's visual workspace for turning a repeatable task into a graph
of connected nodes. A node receives typed values, transforms or generates a
result, and passes that result to the next node. The graph is saved as you
edit it, so you can return to the same workflow, inspect previous runs, and
retry only the work that needs attention.

Flow is useful when a task has more structure than a single chat request:

* connect prompts, models, files, tools, and outputs into an explicit path;
* branch or merge values without rewriting the same prompt by hand;
* process images or videos before displaying or saving them; and
* run a batch of parameterized media requests and retry failed items.

Open Flow
---------

On the Studio home page, use the **Chat / Flow** switcher in the left
sidebar, then select **New Flow**. A new Flow can be unbound to a workspace,
or you can choose a workspace when you create it. A workspace is required by
nodes that read project files, run commands, use workspace tools, or save
media.

The Flow sidebar groups workflows into pinned, workspace, and recent sections.
You can rename, pin, archive, move, or export a Flow from its context menu.
Moving a Flow is disabled while it has an active run.

Create and edit a graph
-----------------------

When the canvas is empty, choose **Add node**. On an existing canvas, right
click an empty area or press ``Shift+A`` to open the node picker. Search by
node name or category, then select a node to place it on the canvas. Drag from
an output port to a compatible input port to create an edge.

The picker includes these built-in categories:

.. list-table::
   :header-rows: 1
   :widths: 24 76

   * - Category
     - Examples
   * - Basic
     - Prompts, text, templates, merge, JSON extraction, conditions, outputs,
       and notes
   * - AI
     - LLM calls with provider, model, and reasoning settings
   * - Workspace
     - File input, tools, and commands
   * - Media input and processing
     - Read images, resize, crop, rotate, composite, and convert formats
   * - Media generation
     - Text-to-image, image-to-image, text-to-video, and image-to-video
   * - Media output
     - Preview generated images, videos, audio, and other artifacts
   * - Parameters
     - Number, boolean, color, and size values
   * - Lists and batches
     - Build, select, and merge lists; define parameter sets; run batch media
       generation
   * - Workspace media
     - Save images or videos into a workspace-relative directory

#### Ports and values

Ports are typed. Common value types are text, JSON, image, video, audio,
frames, artifact, number, boolean, color, and size. A colored port shows its
value type; a list port is marked as accepting multiple values. Connect only
compatible types. Use **To Text** when a value needs to become text, or
**List Item** when a list needs to provide one item.

Some parameters are hybrid inputs: they can use the value entered in the node
or a value supplied by an edge. Once connected, the local control is hidden;
when disconnected, the previous local value is available again. Nodes that
accept a list do not automatically pair or convert two lists, so make the
pairing explicit in the graph.

#### Canvas controls

Drag nodes to lay out the graph. Select a node or edge and press ``Delete``
to remove it. Use the node header to collapse or expand a node, and use its
corners to resize it. The canvas toolbar provides **Zoom in**, **Zoom out**,
**Fit canvas**, and grid snapping. Flow remembers the layout and collapsed
state as part of the saved graph.

Run a Flow
----------

Press **Run** after the graph has finished saving. If the graph contains
**Flow Input** nodes, you can run one input or several compatible entries. If
there is no selected entry, Studio runs the available graph path. An **Output**
or **Media Output** node makes the result visible at the end of a path.

The editor shows node and run states as work progresses. A run can be queued,
running, waiting, completed, partially failed, failed, or stopped. A Flow can
run only one active branch at a time. Press **Stop** to cancel the active run;
completed results remain available for inspection.

Nodes that call tools, commands, or save files can pause at **Pending
approvals**. Review the operation and its reason, then choose **Approve** or
**Reject**. The approval mode in the Flow toolbar controls how much of this
boundary is automatic:

* **Manual** asks for approval for every applicable operation;
* **Auto safe** can proceed with operations allowed by the safe policy; and
* **Full trust** allows the configured tool policy to run without the normal
  per-operation pause.

Use the same care as in a chat session when enabling a less restrictive mode.
See :doc:`agent/approvals` for the general approval model.

Media and image workflows
-------------------------

Flow keeps generated media as run-scoped artifacts. Nodes pass artifact
references through the graph, while the canvas loads previews only when they
are needed. This lets a graph connect generation, image processing, media
preview, and saving without putting the full media bytes into every node.

A typical image workflow is:

.. code-block:: text

   Text -> Text to Image -> Image Resize -> Image Composite -> Media Output
                                                        \-> Save Images

**Image Input** reads a file inside the selected workspace. **Image Resize**
supports contain, cover, and fill modes. **Image Crop**, **Image Rotate**,
**Image Composite**, and **Image Convert** can be chained or used on a list of
images. The original file is not modified.

Use **Media Output** for preview, download, or workspace-oriented output. A
gallery can show thumbnails, open a full preview, compare two results, and
show basic media metadata. Use **Save Images** or **Save Videos** when the
result should become a file in the workspace. Saving is a side effect and can
require approval.

Batch generation
----------------

Use **Parameter Sets** to define one row per request, then connect it to
**Batch Text to Image** or **Batch Image to Image**. A row can include a
prompt, negative prompt, optional seed, dimensions, and image count. The
editor shows both the number of requests and the planned image count.

The current limits are:

* up to 50 parameter rows;
* 1–4 images per row; and
* at most 100 planned images in one batch.

Batch results are tracked per row. If some items succeed and others fail, the
successful items can continue through downstream image-processing nodes and
the run is marked **partial failure**. Choose **Retry failed items** to reuse
successful results and submit only the failed rows. Choose **Regenerate all**
only when you intentionally want to submit every row again.

If a provider returns a job identifier, Flow can use it to recover an
interrupted job. If submission succeeded but no recovery identifier exists,
Flow avoids silently resubmitting a potentially billable request; confirm a
new generation explicitly when prompted.

Manage results and data
-----------------------

Flow results, node state, approvals, and batch progress are persisted with the
Flow. Select a completed run or its output nodes to review what was produced.
Unread completed results are marked in the Flow list until you open the Flow
again.

To create a portable backup, open a Flow's context menu and choose **Export
Flow data**. Studio writes a ``.daedalus-flow`` archive containing the workflow,
node layout, run history, and media artifacts. If media files are missing,
Studio completes the export and reports the missing-file count. Do not use
Studio's application data as the export destination.

To restore a Flow, import a compatible ``.daedalus-flow`` archive. The archive
restores the workflow, node layout, run history, and media artifacts. An import
is rejected if the Flow ID is already present. Legacy SQLite exports are not
supported. If the package version is incompatible, re-export it as a
``.daedalus-flow`` file with the latest Daedalus.

The **workspace** boundary still applies to file input, commands, tools, and
media saving. Keep a Flow in the workspace that owns its relative file paths,
or move it before running nodes that require workspace access. For general
workspace behavior, see :doc:`workspaces/index`.

Troubleshooting
---------------

* **A node is unavailable.** It may require a workspace, a configured
  provider/model, or an installed and trusted plugin. Select a workspace or
  check the relevant provider and plugin settings.
* **The Run button is disabled.** Wait for graph changes to finish saving and
  make sure the selected Flow Input and Output nodes still exist.
* **The run is waiting.** Review the approval queue. A tool, command, or save
  operation may be waiting for a decision.
* **Only part of a batch failed.** Open the batch node, inspect the per-item
  errors, and use **Retry failed items** after correcting the cause.
* **A preview is missing.** Check the run and node status first. A missing
  source artifact, an unsupported media type, or an expired cleanup result
  can prevent a preview from loading.

For keyboard commands that apply while the Flow surface is active, see
:doc:`reference/shortcuts`.

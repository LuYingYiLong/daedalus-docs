Providers and Models
====================

Studio obtains the effective provider and model list from the backend at
runtime. This means the model menu can reflect provider discovery, local
overrides, and disabled models instead of relying on one hard-coded list.

Configure a provider
--------------------

#. Open **Settings > Provider**.
#. Choose a built-in provider or add a compatible custom provider.
#. Enter the API key and, when required, the API base URL.
#. Test the connection.
#. Save the provider and select at least one model.
#. Open **Settings > Default model** and choose the model for new sessions.

The same provider and model can be changed per session from the composer.
Provider model entries may show capabilities such as reasoning, image input,
or web search. A capability badge describes what the provider reports; it is
not a guarantee that every request will succeed.

Manage the model list
---------------------

The Provider page can load models from the provider, import selected models,
refresh the list, and add a model manually when the provider does not expose a
model-list endpoint. Search by model ID or display name before importing.

You can enable or disable a provider and remove models from the available
list. Studio prevents you from removing or disabling a model that is still the
active model, a task route, or the Web Search model. Choose a replacement in
**Default model** or **Search** first.

Local model overrides
---------------------

The catalog supplies names, context limits, output limits, capabilities, and
reasoning levels. A local override changes what Studio displays or uses on
this computer. Fields you leave as **Follow source** continue to receive
future catalog updates. Use **Reset all to source** when local metadata has
become confusing.

Custom provider compatibility
------------------------------

Custom providers can use one of the supported compatibility shapes:

* OpenAI-compatible Chat Completions;
* OpenAI Responses;
* Anthropic-compatible Messages.

Use the endpoint and model identifiers required by your provider. If the
provider exposes request options that Studio does not understand, keep the
request configuration conservative and test a small conversation before using
it for writes.

Custom request settings
-----------------------

The **Custom request** editor lets you add provider-specific top-level
``headers`` and ``body`` fields for text-model requests. Studio keeps
authentication, model, messages, tools, and streaming fields under its own
control; reserved fields are rejected when you save. Use the provider's
documentation to decide which extra fields are safe and test a small Ask
request before enabling a write-capable workflow.

Provider-specific reasoning levels
-----------------------------------

Some models accept named reasoning values that do not use Studio's names. The
Provider page lets you define provider values and map them to equivalent
levels such as Low, Medium, High, or Maximum. Only configure these values when
the provider documents them; a wrong mapping can make a request fail or use a
different reasoning strength than expected.

Task-specific model routing
---------------------------

**Settings > Default model** can assign separate models to background tasks:

* session title generation;
* next-step suggestions in the empty composer;
* Goal completion evaluation;
* context compression;
* image recognition when the active model cannot read images;
* image generation and editing;
* Git commit message generation;
* command review in Auto-safe mode.

When a route is unset, it normally follows the active or main model. Some
routes deliberately disable reasoning. Set a route only when you understand
why a different model is useful.

Keys and troubleshooting
------------------------

API keys are stored through the operating-system credential store and are not
written to ordinary Daedalus JSON configuration. Do not paste a key into a
prompt, custom instruction, issue report, or screenshot.

If testing fails, verify the endpoint, account permissions, model identifier,
network access, and provider-specific request settings. A successful test only
shows that the configured connection responded; it does not validate tool
calling, image input, reasoning, or web search for every model.

Web search
----------

Web search is an explicit, separately configured operation. It stays disabled
until its provider and settings are ready. A model marked as search-capable
does not automatically grant web access.

Configure search in **Settings > Search** by enabling it, selecting the
provider-native search model, choosing a default result count, and limiting
the number of generated keywords. A higher keyword limit may improve recall
but can increase provider charges; check the provider's pricing before
enabling it for every conversation.

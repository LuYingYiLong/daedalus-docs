Privacy, Secrets, and Support Data
==================================

Studio can see the project context you provide and the files that approved
tools read or change. The configured model provider receives the request and
the context needed to answer it. External MCP servers, browser services, and
web search are additional destinations that you choose to enable.

What to protect
---------------

Keep the following out of prompts and attachments unless you have a specific,
reviewed reason to share them:

* provider API keys and access tokens;
* MCP environment variables, headers, and secrets;
* browser passwords, cookies, private profile data, and external page content;
* desktop-window text, OCR results, and screenshots captured by computer use;
* signing certificates and deployment credentials;
* unrelated personal documents;
* unredacted logs containing usernames, absolute paths, or project secrets.

Local runtime data
------------------

Daedalus runtime data normally lives under ``%USERPROFILE%\\.daedalus``. It can
include session messages, attachments, tool results, project names, file
paths, and diagnostics. Inspect and sanitize it before copying it to another
computer or attaching it to an issue.

Computer-use observations, external-browser activity, trajectory records, and
exported session logs can add more detail to that local data. Developer mode
controls whether new diagnostic bodies are stored and shown, while automatic
history compaction permanently removes older thinking, tool arguments, tool
output, browser details, and screenshots. Neither setting makes already shared
provider data private again.

Keys are stored through the operating-system credential store rather than in
ordinary configuration files. This protects storage at rest, but it does not
make it safe to paste a key into a prompt or expose it through a custom tool.

Safe bug reports
----------------

Include the Studio, backend, and Godot versions; the smallest reproduction;
the relevant workspace type; and sanitized startup or session diagnostics.
Remove API keys, custom MCP secrets, private file contents, and unnecessary
absolute paths.

Review before external actions
------------------------------

The approval gateway separates read, verify, propose, write, and destructive
operations. Still review the target, command, endpoint, and changed files
before approving. A local integration can be powerful without being safe for
every project.

Computer use and external browser control deserve an additional review. Check
the selected desktop window or browser target, the text and screenshots that
may be sent to your model provider, and the exact action proposal before
granting access. A window authorization is not a filesystem sandbox, and an
external browser approval is limited to the current run.

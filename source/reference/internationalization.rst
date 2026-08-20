Internationalization and Chinese Builds
========================================

The documentation source is written in English and lives under ``source/``.
Translations are maintained as gettext catalogs under
``source/locale/<language>/LC_MESSAGES``. This keeps the English pages easy to
review while allowing Read the Docs to build a localized version from the same
source tree.

Chinese support
---------------

The Simplified Chinese locale is ``zh_CN``. The current catalogs are stored in
``source/locale/zh_CN/LC_MESSAGES``. All current user-facing pages have Chinese
translations. This keeps the published Chinese site consistent while still
allowing new source strings to fall back to English until they are translated.
The fallback is intentional: a new source string must not make the localized
site blank or fail to build.

Build the Chinese site locally with::

   sphinx-build -b html -D language=zh_CN source build/html/zh_CN

On Windows, the equivalent Make target is::

   make.bat html-zh

The default English build remains::

   sphinx-build -b html source build/html/en

Updating catalogs
-----------------

When an English page changes, regenerate the gettext templates and update the
Chinese catalogs from the repository root::

   sphinx-build -b gettext source build/gettext
   sphinx-intl update -p build/gettext -l zh_CN

The Make targets wrap these commands::

   make gettext
   make update-po

On Windows, use ``make.bat gettext`` and ``make.bat update-po``. The
``sphinx-intl`` command is installed by ``requirements.txt``. Keep the English
source as the canonical text, translate only the ``msgstr`` values, and
preserve Sphinx roles such as ``:doc:`...````, inline literals, option names,
and code examples.

Read the Docs setup
-------------------

The repository includes ``.readthedocs.yaml``. It pins the build environment,
installs the documentation requirements, points Read the Docs at
``source/conf.py``, and treats warnings as build failures. The configuration
does not create a language matrix by itself. In Read the Docs, create a
translation project for the Chinese version and select ``zh_CN`` as its
language; the project can then use the same repository and configuration while
passing ``-D language=zh_CN`` to the Sphinx build.

Before publishing a translation, run both language builds and inspect the
output for missing-reference or malformed-inline-markup warnings. A translated
catalog should be updated whenever the corresponding English page changes.

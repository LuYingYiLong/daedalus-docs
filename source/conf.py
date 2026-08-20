# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'Daedalus Studio User Guide'
copyright = '2026, LuYingYiLong'
author = 'Daedalus Studio contributors'
release = '0.0.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = []

# Sphinx gettext catalogs are kept under source/locale. The default language
# remains English; Read the Docs or a local build can select zh_CN with
# ``-D language=zh_CN``.
language = 'en'
locale_dirs = ['locale/']
gettext_compact = False

templates_path = ['_templates']
exclude_patterns = []



# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'sphinx_book_theme'
html_theme_options = {
  "use_repository_button": True,
  "repository_url": "https://github.com/LuYingYiLong/daedalus-docs",
  "use_issues_button": True,
}
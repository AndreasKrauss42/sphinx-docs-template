# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'Sphinx-docs Template'
copyright = '2023, Andreas Krauss'
author = 'Andreas Krauss'
release = '0.0.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    'sphinx_rtd_theme',
    'sphinx_design',
    'sphinx_copybutton',
    'sphinxcontrib.plantuml',
    'sphinxcontrib.mermaid',
    'sphinxemoji.sphinxemoji',
    'sphinx.ext.todo'
]

templates_path = ['_templates']
exclude_patterns = []

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']

html_favicon = '_static/icons8-book-32.png'

# Setup 'Edit on Github' links
html_context = {
    'display_github': True, # Integrate GitHub
    'github_user': 'AndreasKrauss42', # Username
    'github_repo': 'sphinx-docs-template', # Repo name
    'github_version': 'main', # Version
    'conf_py_path': '/docs/', # Path in the checkout to the docs root
}

# -- Options for plantUML Support --------------------------------------------
# if you cannot access plantuml via console/terminal, you can reference the jar-file directly
# plantuml = ['java', '-jar', '.plantuml/plantuml.jar']
plantuml_output_format = 'svg_img'

# -- Options for mermaid Support ---------------------------------------------

mermaid_params = ['--width', '600', '--backgroundColor', 'transparent']

# -- Options for copybutton --------------------------------------------------

copybutton_prompt_text = r"\$"		# This is a JS regex
copybutton_prompt_is_regexp = True

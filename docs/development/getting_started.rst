===============
Getting Started
===============

Welcome to our quickstart guide. 
In this guide, we will setup the required tools and show you how to get started writing technical documentation.
We designed this quickstart guide to be ready and completed within 30 minutes.

So let's get started.


Setup your development environment
==================================

This template prepares a Sphinx-build documentation which preconfigures following features:

- Graphs from code (PlantUML, MermaidJS, Structurizr)
- ReadTheDocs Theme (Math support, admonitions, linkage to Github)
- Emojis |:smile:|
- Copybutton for code examples

To provide these features, we must install multiple dependencies.

Let's start with the requirements for `Sphinx <https://www.sphinx-doc.org/en/master/>`__. 
Sphinx is a python tool. 
Therefore, make sure that Python 3 is installed.

Python 3
--------

To check your python version, run following command:

**Windows (PS/Cmd) | Linux (bash | sh)**

.. code-block:: bash

   $ python --version
   Python 3.x.x

As shown in the above code block, the version of python should 3.6 or above.
If you do not have Python3 installed please follow the native installation instructions from `Python.org <https://www.python.org/>`__.

.. todo::
   Check relevance of minor and patch version of Python3.


PlantUML
--------

PlantUML is a tool to build graphs - especially UML diagramms.
The extension uses the native installation of plantuml on your operating system.
Therefore, we recommend following installation methods:

**Windows**

Please install plantuml using chocolatey:

.. code-block::

   choco install plantuml

**Linux (Ubuntu)**

Please install `plantuml` via apt:

.. code-block::

   $ sudo apt-get install plantuml


.. important:: Python/Pip, PlantUML and Structurizr must be usable via the console.


Structurizr (Planned)
---------------------

Download and install the `structurizr-cli <https://github.com/structurizr/cli>`__ from its repository.

.. important:: Remember to add structurizr to your system's PATH variable.


Sphinx Extensions
-----------------

This template uses several extensions, such as `sphinx_rtd_theme <https://sphinx-rtd-theme.readthedocs.io/en/stable/>`__, `sphinx-copybutton <https://sphinx-copybutton.readthedocs.io/en/latest/>`__.
To install them, follow the below steps.

1. Go into your project folder's root.
2. Start a command shell (``cmd`` / ``powershell`` on Windows | ``terminal`` on Linux)
3. Run ``pip install -r docs/requirements.txt``

Start documenting
=================

*TBA* 

Local Build
-----------

We think that early access to a built version of the documentation is key for a good quality.
The earlier developers see their documentation, they can adapt the look and feel or improve the visualization of their system.
Therefore, we tried to simplify local execution using this template as far as possible.

To build the documentation locally, run following script:

**Windows**

.. code-block::
   
   build_docs.bat

**Linux**

.. code-block::
   
   build_docs.sh

The script will build the documentation to the html format using Sphinx.
The generated source of the documentation is placed in the ``_build`` folder in the project root.

Start a new chapter
-------------------

*TBA* How to add a new chapter?

A sample chapter can be found at :ref:`Sample Chapter`.

Add Graphs
----------

There are two methods to add images to the documentation.
Firstly, you can add Graphs as file, such as a JPG, PNG, or SVG.
Secondly, you can generate graphs automatically using PlantUML or MermaidJS.
Both extensions allow to add their markup language inline or as a separate file.

Graphic files
^^^^^^^^^^^^^

These are static files and should be placed in ``docs/_static``.
Reference these images using the ``img`` or ``figure`` directive of sphinx.
The reference should be a relative link.

via PlantUML
^^^^^^^^^^^^

This template supports PlantUML via the `sphinxcontrib-plantuml <https://github.com/sphinx-contrib/plantuml>`__ extension.

A PlantUML diagramm can be written in the source of this page:

.. uml::
   :align: center

   Alice -> Bob: Good Morning. How are you?
   Alice <- Bob: Hey, I'm fine thanks.

Or can be written in a separate file such as ``_assets/plantuml/example.uml``.
Please note that the reference is a relative link.

.. uml:: ../_assets/plantuml/example.plantuml
   :scale: 80 %
   :align: center

Checkout the `homepage of plantuml <https://plantuml.com/en/>`__ for more information.

Inside this template, we recommend to place PlantUML files using following directory pattern: ``docs/_assets/plantuml/<chapter>/<filename>.puml``.
The ``<chapter>`` section is optional.

via Mermaid
^^^^^^^^^^^

This template supports mermaid graphs via the `sphinxcontrib-mermaid <https://github.com/mgaitan/sphinxcontrib-mermaid>`__ extension, such as:

.. code-block:: rst
   :caption: Example for an inline MemaidJS graph
   
   .. mermaid::

      flowchart LR
         step1(Compile Graphs)
         step2(Compile rst-files)
         step3[[Deploy Docs]]

         step1 --> step2
         step2 --> step3

Which results in following graph:

.. mermaid::
   :align: center

   flowchart LR
      step1(Compile Graphs)
      step2(Compile rst-files)
      step3[[Deploy Docs]]

      step1 --> step2
      step2 --> step3

Checkout `Mermaid.js <https://mermaid.js.org/syntax/examples.html>`__ for more examples

Inside this template, we recommend to place Mermaid files using following directory pattern: ``docs/_assets/mermaid/<chapter>/<filename>.mmd``.
The ``<chapter>`` section is optional.

via Structurizr
^^^^^^^^^^^^^^^

Structurizr defines a model which can be exported to several views (e.g., to PlantUML or mermaid).
This concepts reduces redundancy between several graphs.
Checkout the `structurizr DSL <https://github.com/structurizr/dsl>`__ to learn how to create models.

As you may have noticed, structurizr requires an additional step while building the documentation.
With supporting structurizr, we must generate the graphic resources for each view in the workspace.
The required command is integrated into the ``build_docs.{bat|sh}`` script.

To add the generated graphs simply reference them using a relative link, e.g.:


.. code-block:: rst
   :caption: Example for integration of a view generated by structurizr
   
   .. uml:: ../_assets/structurizr/structurizr-ViewAlpha.puml
      :width: 600
      :align: center


.. uml:: ../_assets/structurizr/structurizr-ViewAlpha.puml
   :width: 600
   :align: center


As you may have noticed, we follow the same pattern as we already did for PlantUML and Mermaid files.
Place the ``.dsl`` file in ``docs/_assets/structurizr/``.
The generated ``.puml``-files are placed next to the ``.dsl`` file.
Thus, the relative paths should follow the pattern: ``<rel-path-root>/_assets/structurizr/structurizr-<view-id>.puml``.

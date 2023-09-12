===================
Directory Structure
===================

.. todo:: Visualize recommended directory structure within a documentation project.

The documentation framework expects the source of the documentation in `WORKDIR/docs`.
In this directory, the `conf.py` and the `index.rst` file must be present.
The first configures extensions and meta data.
The latter describes the root (also the landing page) of the documentation.

A complete documentation structure can look as follows:

.. code-block:: text

   docs
   ├ _static
   ├ _template
   ├ assets
   ├ resources
   ├ chapter1
   │ ├ mainpage_ch1.rst
   │ └ subpage_ch1.rst
   └ index.rst


Within the container the following directory structure is used:

.. code-block:: text

   /usr/local/bin
   ├ structurizr.sh
   └ plantuml.sh
   /home/sphinx
   ├ src
   └ _build

The source directory ``docs/`` is bind mounted onto ``/home/sphinx/src``  while ``_build/`` is bind mounted onto ``/home/sphinx/_build``.

.. note:: 
   The build script creates a local ``_build`` directory that is owned by the local user.
   This should avoid getting a root-owned build-artifact on the outside of the container.

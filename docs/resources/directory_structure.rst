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
      _static
      assets
      chapter1
         mainpage_ch1.rst
         subpage_ch1.rst
      chapter2
         mainpage_ch2.rst
         subpage_ch2.rst
      index.rst


Within the container the following directory structure is used:

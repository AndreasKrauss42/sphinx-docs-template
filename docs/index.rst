=======
Welcome
=======

This is a template repository to setup a documentation hosted via Github Pages and generated using Sphinx.

.. Note:: Please note, as we deploy using a custom Github Action workflow, we do not need a `.nojekyll` file. 
   Therefore, we also do not need the ``sphinx.ext.github_pages``.

This is |:100:| % only a proof of concept for the deployment workflow. 

This template supports math: :math:`A^2 + B^2 = C^2`.

Furthermore, code samples including a copy button are supported.

.. code-block:: python

   echo "This is helpfull!"

Last, but not least, checkout plantUml and mermaid support by checking out their sections.

.. toctree::
   :maxdepth: 1
   :hidden:
    
   getting_started
   about
   
.. toctree::
   :maxdepth: 1
   :hidden:
   :caption: Resources

   resources/technical_writing
   resources/feature_set
   resources/directory_structure


.. toctree::
   :maxdepth: 1
   :hidden:
   :caption: Examples

   sample_chapter/chapter



Indices and tables
==================

* :ref:`genindex`


References
==========

Icons
-----

* The `Book <https://icons8.com/icon/42763/book>`__ icon by `Icons8 <https://icons8.com>`__ used as favicon for this page

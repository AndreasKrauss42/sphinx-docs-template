================
PlantUML Support
================

This template also supports plantuml via the `sphinxcontrib-plantuml` extension.

A plantuml diagramm can be written in the source of this page:

.. uml::
   :align: center

   Alice -> Bob: Good Morning. How are you?
   Alice <- Bob: Hey, I'm fine thanks.

Or can be written in a separate file such as `_assets/plantuml/example.uml`.

.. uml:: ../_assets/plantuml/example.plantuml
   :scale: 80 %
   :align: center

Checkout the `homepage of plantuml <https://plantuml.com/en/>`__ for more information.
Have fun working with generated graphs!


=====
Theme
=====

The documentation uses the ReadTheDoc theme.
To create a uniform impression we provide themes for certain tools.
The themes provided and how to load them into the responding tool is explained in this section.


PlantUML
========

PlantUMl by default builds its graphs using the rose skin. However, we provide a RTD theme to align graphs with the documentation style.

To apply this theme on a plantUML graph add following line after the ``@start<diagram>`` tag:

``!include <relative-path-to>/_assets/plantuml/puml-theme-rtd-light.puml``

Please remember to adapt the *relative path* in this code fragment.

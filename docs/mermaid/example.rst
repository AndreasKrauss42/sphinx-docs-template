===============
Mermaid Support
===============

This template also supports mermaid graphs:

.. mermaid::

   flowchart LR
      step1(Compile Graphs)
      step2(Compile rst-files)
      step3[[Deploy Docs]]

      step1 --> step2
      step2 --> step3

Checkout `Mermaid.js <https://mermaid.js.org/syntax/examples.html>`__ for more examples
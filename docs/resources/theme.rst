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


MermaidJS
=========

In this section, we show some example

.. dropdown:: Flowchart

   .. mermaid::
      :align: center

      flowchart TB
         subgraph Structurizr
         DSL --> C4PUML
         end
         MMD --> Graph
         PUML --> Graph
         C4PUML --> Graph
         subgraph &nbsp&nbsp&nbsp&nbsp&nbsp&nbspSphinx
         Graph --> HTML
         RST --> HTML
         end

.. dropdown:: Sequence Diagram
   
   The following graph was created by the MermaidJS team.
   The source code can be found `here <https://mermaid.js.org/syntax/sequenceDiagram.html>`__.

   .. mermaid:: 
      :align: center

      sequenceDiagram
         par Alice to Bob
            Alice->>Bob: Go help John
         and Alice to John
            Alice->>John: I want this done today
            par John to Charlie
               John->>Charlie: Can we do this today?
            and John to Diana
               John->>Diana: Can you help us today?
            end
         end

.. dropdown:: Class Diagram

   The following graph was created by the MermaidJS team.
   The source code can be found `here <https://mermaid.js.org/syntax/classDiagram.html>`__.

   .. mermaid:: 
      :align: center
      :caption: Class Diagram

      classDiagram
         Customer "1" --> "*" Ticket
         Student "1" --> "1..*" Course
         Galaxy --> "many" Star : Contains

.. dropdown:: State Diagram

   The following graph was created by the MermaidJS team.
   The source code can be found `here <https://mermaid.js.org/syntax/stateDiagram.html>`__.

   .. mermaid:: 
      :align: center
      :caption: State Diagram v2

      stateDiagram-v2
         state fork_state <<fork>>
            [*] --> fork_state
            fork_state --> State2
            fork_state --> State3

            state join_state <<join>>
            State2 --> join_state
            State3 --> join_state
            join_state --> State4
            State4 --> [*]

.. dropdown:: ER Diagram

   The following graph was created by the MermaidJS team.
   The source code can be found `here <https://mermaid.js.org/syntax/entityRelationshipDiagram.html>`__.

   .. mermaid:: 
      :align: center

      erDiagram
         CAR ||--o{ NAMED-DRIVER : allows
         CAR {
            string registrationNumber PK
            string make
            string model
            string[] parts
         }
         PERSON ||--o{ NAMED-DRIVER : is
         PERSON {
            string driversLicense PK "The license #"
            string(99) firstName "Only 99 characters are allowed"
            string lastName
            string phone UK
            int age
         }
         NAMED-DRIVER {
            string carRegistrationNumber PK, FK
            string driverLicence PK, FK
         }
         MANUFACTURER only one to zero or more CAR : makes

.. dropdown:: Gantt

   The following graph was created by the MermaidJS team.
   The source code can be found `here <https://mermaid.js.org/syntax/gantt.html>`__.


   .. mermaid:: 
      :align: center

      gantt
         dateFormat  YYYY-MM-DD
         title       Adding GANTT diagram functionality to mermaid
         excludes    weekends
         %% (`excludes` accepts specific dates in YYYY-MM-DD format, days of the week ("sunday") or "weekends", but not the word "weekdays".)

         section A section
         Completed task            :done,    des1, 2014-01-06,2014-01-08
         Active task               :active,  des2, 2014-01-09, 3d
         Future task               :         des3, after des2, 5d
         Future task2              :         des4, after des3, 5d

         section Critical tasks
         Completed task in the critical line :crit, done, 2014-01-06,24h
         Implement parser and jison          :crit, done, after des1, 2d
         Create tests for parser             :crit, active, 3d
         Future task in critical line        :crit, 5d
         Create tests for renderer           :2d
         Add to mermaid                      :1d
         Functionality added                 :milestone, 2014-01-25, 0d

         section Documentation
         Describe gantt syntax               :active, a1, after des1, 3d
         Add gantt diagram to demo page      :after a1  , 20h
         Add another diagram to demo page    :doc1, after a1  , 48h

         section Last section
         Describe gantt syntax               :after doc1, 3d
         Add gantt diagram to demo page      :20h
         Add another diagram to demo page    :48h


.. dropdown:: Requirements Graph
   
   The following graph was created by the MermaidJS team.
   The source code can be found `here <https://mermaid.js.org/syntax/requirementDiagram.html>`__.

   .. mermaid:: 
      :align: center

      requirementDiagram

         requirement test_req {
         id: 1
         text: the test text.
         risk: high
         verifymethod: test
         }

         functionalRequirement test_req2 {
         id: 1.1
         text: the second test text.
         risk: low
         verifymethod: inspection
         }

         performanceRequirement test_req3 {
         id: 1.2
         text: the third test text.
         risk: medium
         verifymethod: demonstration
         }

         interfaceRequirement test_req4 {
         id: 1.2.1
         text: the fourth test text.
         risk: medium
         verifymethod: analysis
         }

         physicalRequirement test_req5 {
         id: 1.2.2
         text: the fifth test text.
         risk: medium
         verifymethod: analysis
         }

         designConstraint test_req6 {
         id: 1.2.3
         text: the sixth test text.
         risk: medium
         verifymethod: analysis
         }

         element test_entity {
         type: simulation
         }

         element test_entity2 {
         type: word doc
         docRef: reqs/test_entity
         }

         element test_entity3 {
         type: "test suite"
         docRef: github.com/all_the_tests
         }


         test_entity - satisfies -> test_req2
         test_req - traces -> test_req2
         test_req - contains -> test_req3
         test_req3 - contains -> test_req4
         test_req4 - derives -> test_req5
         test_req5 - refines -> test_req6
         test_entity3 - verifies -> test_req5
         test_req <- copies - test_entity2

.. dropdown:: Mindmap

   The following graph was created by the MermaidJS team.
   The source code can be found `here <https://mermaid.js.org/syntax/mindmap.html>`__.

   .. mermaid:: 
      :align: center

      mindmap
         root((mindmap))
            Origins
               Long history
               ::icon(fa fa-book)
               Popularisation
               British popular psychology author Tony Buzan
            Research
               On effectiveness<br/>and features
               On Automatic creation
               Uses
                     Creative techniques
                     Strategic planning
                     Argument mapping
            Tools
               Pen and paper
               Mermaid

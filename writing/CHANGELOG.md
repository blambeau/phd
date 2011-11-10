# Conclusion

* The conclusion has been revisited in depth. Contributions, significance of 
  results and strenghts of our approach have been clarified.
* The conclusion now discusses robustness and misclassification open issues.
* The conclusion now discusses convergence and scalability open issues.
* The conclusion now discusses lack of knowledge issues and inability to answer
  scenario questions.
* This conclusion now discusses implied scenarios and related open issues.

# Evaluation

* What do you evaluate?

  * The introduction section of Chapter 5 has been extended to better sell the 
    way evaluations have been conducted and why they have been conducted that 
    way. In particular, it is now much clearer that we evaluate the _overal 
    effectiveness of inductive synthesis_ through controlled experiments. 
    Links with the thesis objectives in Introduction have been made explicit.
  * A fresh new section has been added when evaluating the approach on case 
    studies. A modeling session in the ISIS tool is illustrated step-by-step on
    the Mine Pump. The section show how the pump controller state machine is 
    inferred. Only two initial scenarios are given as input. Scenario questions
    trigger the identification of fluents, domain properties and goals. The pump
    controller is built in three small iterations in the tool, demonstrating the
    effectiveness of the proposed approach.
  * The conclusion/discussion section of the same chapter has been slighlty 
    extended and revisited to link technical evaluation results to the thesis
    objectives.

* Scalability

  * The scalability of the approach has been further discussed in the conclusion
    section of Chapter 5. In particular it is now explicitely showed that the 
    approach scales when one considers model adequacy/accuracy, induction time 
    and real time usage. 
  * It has been made explicit that the number of positive scenario questions 
    leads to _scalability_ problem when using the QSM approach on large systems.
    A solution to this problem is proposed, this problem is further examined in
    the thesis conclusion.
  * It should be noted that no new plot has been added that would show how the 
    approach scales (time or # of scenario questions) when the size of the 
    target system increases. The reason is that it would lead to plots whose 
    soundness is arguable because of comparisons based on unrelated sample 
    richnesses (a learning sample of 100% is richer for large target systems 
    than for small ones, in an unknown relation).

# Related Work

* Strenghts of our approach have been made clearer when compared to statechart 
  synthesis from Whittle and Schuman [WS00] as well as Kruger [Kr00] (Section 
  8.1.1)
* Strenghts of our approach have been made clearer when compared to the minimaly
  adequate teacher approach [MS01] (Section 8.1.2).
* A comparison has been added with Harel's Play in/play out approach [HM03] in
  Section 8.1.3. Strenghts and drawbacks of both approaches are discussed.

# Miscellaneous

* Introduction: references to OMT and Finkelstein's viewpoints have been added 
  when talking about Multi-view modeling.
* Section 2.4.2: a remark has been added about our implicit use of the partial 
  ordering framework with negative scenarios.
* Section 2.7: the_may_ vs _must_ of decision nodes in process models has been 
  made explicit.
* Chapter 3: the advantages of introducing guarded LTS have been made more 
  explicit in Introduction and Summary sections.
* Section 3.3.1: conditions under which the g-LTS resulting from g-hMSC can be
  simplified (tau transitions removal) have been clarified.
* Section 3.3.2: a remark has been added about the reason why we call the Super 
  g-LTS "super" (superset of admissible traces).
* Section 3.3.2: a remark has been added about fluents with undetermined initial
  values in fluent g-LTS construction.
* Section 4.1.1: a remark has been added about our implicit assumption that the
  synthesized system is captured through a minimal automaton.
* Section 4.1.1: a remark has been added about our implicit use of the general 
  MSC framework with partial event ordering.
* Section 4.3: the fact that any quotient automaton still covers positive 
  scenarios by construction has been recalled.
* Section 4.3.3 and others: incorrect references to the Compatible function have
  been replaced by references to the Consistent.
* Section 5.2.7: a remark has been added about the small target state machines 
  used in case studies.
* Section 5.3.1: the fact that induction samples are balanced because of the 
  kind of automata considered has been clarified.
* Section 5.3.x: the absisse scale has been clarified in plots.

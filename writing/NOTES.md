* 2011.06.24 - Sections to refactor

  * 2.1 Running examples

    * Add a running example for process models (Meeting scheduler)?

  * 2.2.1 Framework overview

    * Define _behavioral_ goal
    * Add a section about "The operational view" (cfr. Axel's comment
      on page 7)

  * 2.2.2 On double use of LTS models

    * The discussion should probably be extended a bit now? Consistency
      rules are not introduced anymore.

    * Refactor image 2.2 and add process models to it

  * 2.3 State machines

    * \Sigma star is not introduced

  * 2.4.2 Negative scenarios

    * Find an older reference for _negative scenario_.

  * 2.4.5 Flowcharting scenarios ...

    * Say briefly why not all hMSCs define regular languages.

    * Find a name for the "Composing bMSCs" hypothesis (coherence between
      weak/strong sequencing and partial/total ordering)

    * Find another definition for implied scenarios...

  * Section 2.5.3: Integrating fluents in multi-view models

    * Remove or replace the paragraph about a fluent being TOP in LTS states.

  * 2.6.1 Properties as FLTL assertions

    * Justify restricting to safety properties with Axel's argument (see bottom
      of page 30) 

  * 2.6.3 Tester and property automata

    * Accepting states vs. non-accepting states has not be introduced 
      graphically (double-circle)

  * 2.7 Model Synthesis Revisited

    * Move all but intra-phd references in related work.

  * Everywhere
  
    * How to change captions' font??

    * Replace equation -> relation. All equations should probably have a number.

* 2011.06.24 - To discuss with Axel

  * The integration of all models in a coherent framework can be seen 
    as a contribution _per se_, IMO. The formalization is inspired yet
    different from Uchitel:2003. Consistency rules are all mine. Not 
    really important, though, as the sentence has been removed.

  * Add another running example in the background or immediately in 
    chapter 3?
  
  * Section 2.2.2: 	Consistency rules are not introduced anymore.
  
  * What is the reference about _agent interfaces_ (Jackson?) ?

  * Determinate agents are agents whose behavior _can_ be modeled with
    deterministic state machines only. It has been introduced previously
    but is not really known, I confess.

  * Should I really use definition numbers ?? There's **a lot** of them.

  * Section 2.4.5: is the current sequence about bizarre hMSC semantics 
    clearer now? 

  * Section 2.5.3: a fluent might be TOP in a LTS state. I consider this
    as problematic (Christophe does not). The way fluents are used to prune 
    the induction process implicitly argue in favor of my position IMHO. If 
    a monitorable/controllable fluent is TOP in a LTS state, the machine 
    necessarily models classes of states, not agent states _per se_.
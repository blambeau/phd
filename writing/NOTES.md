* 2011.06.30 - Sections to refactor in chapter 4

  * Add a sentence about "membership queries" before using the term.

  * Check that "uv" (vs. "u.v") string concatenation is compatible with
    Background.

  * Normalize images and verify that abbreviates are correctly introduced.

      \texttt{a.pres}, \texttt{a.prop}, \texttt{e.open}, \texttt{e.stop} stand for \texttt{alarm pressed, alarm propagated, emergency open, emergency stop} respectively}.

* 2011.06.24 - Sections to refactor in chapter 2

  * 2.1 Running examples

    * Add a running example for process models (Meeting scheduler)?

  * 2.2.2 On double use of LTS models

    * The discussion should probably be extended a bit now? Consistency
      rules are not introduced anymore.

  * 2.4.5 Flowcharting scenarios ...

    * Say briefly why not all hMSCs define regular languages.

    * Find a name for the "Composing bMSCs" hypothesis (coherence between
      weak/strong sequencing and partial/total ordering)

    * Find another definition for implied scenarios...

  * Section 2.5.3: Integrating fluents in multi-view models

    * Remove or replace the paragraph about a fluent being TOP in LTS states.

  * Everywhere
  
    * How to change captions' font??

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

  * Section 2.4.2: What older reference about negative **MSC**? I've put
    Uchitel:2002 now. Uchitel:2003 even says "our inclusion of negative
    scenarios in MSC specifications is, to the best of our knowledge, 
    novel". In admit that the notion of negative **scenario** is older.
    
  * Section 2.4.5: is the current sequence about bizarre hMSC semantics 
    clearer now? 

  * Section 2.5.3: a fluent might be TOP in a LTS state. I consider this
    as problematic (Christophe does not). The way fluents are used to prune 
    the induction process implicitly argue in favor of my position IMHO. If 
    a monitorable/controllable fluent is TOP in a LTS state, the machine 
    necessarily models classes of states, not agent states _per se_.

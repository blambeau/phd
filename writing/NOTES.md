* 2011.07.01 -- Definitely grep on TODO ;-)

* 2011.06.30 - Sections to refactor in chapter 4

  * Restate the requirement that all scenarios start in the same system state
    somewhere. This is left implicit because of scenario collections so far. 

  * Add a sentence about "membership queries" before using the term.

  * Check that "uv" (vs. "u.v") string concatenation is compatible with
    Background.

  * Normalize images and verify that abbreviates are correctly introduced.

      \texttt{a.pres}, \texttt{a.prop}, \texttt{e.open}, \texttt{e.stop} stand for \texttt{alarm pressed, alarm propagated, emergency open, emergency stop} respectively}.

  * Is a proof (argument) needed in Section 4.4.2 (injecting goals ensures
    system consistency)?

  * Section 4.5 - LTS synthesis from high-level MSCs

    * State that the initial state assumption is no longer required here.

  * Add an illustration to union of hMSC languages in 4.5.1

* 2011.06.24 - Sections to refactor in chapter 2

  * 2.1 Running examples

    * Revisit the train example to match what is used in Chapter 4

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

    -> ususal with a background section. 
    -> address the difference of semantics in related work chapter
    -> avoid wrong phrasing "the definition XXX, from [YYY]" if not the
       same semantics

  * Add another running example in the background or immediately in 
    chapter 3?

    -> add it to chapter 3 + add motivation for multiple case studies
  
  * Section 2.2.2: 	Consistency rules are not introduced anymore.

    -> not discussed so far
  
  * What is the reference about _agent interfaces_ (Jackson?) ?

    -> Zave & Jackson:1996 "Where are operations coming from?"
    -> Maybe Jackson:1995 "The world and the machine"

  * Determinate agents are agents whose behavior _can_ be modeled with
    deterministic state machines only. It has been introduced previously
    but is not really known, I confess.

    -> ok. Might be clearer with explicit reference to a definition number

  * Should I really use definition numbers ?? There's **a lot** of them.

    -> Just do it ;-)

  * Section 2.4.2: What older reference about negative **MSC**? I've put
    Uchitel:2002 now. Uchitel:2003 even says "our inclusion of negative
    scenarios in MSC specifications is, to the best of our knowledge, 
    novel". In admit that the notion of negative **scenario** is older.
    
    -> AVL & Willement 1998

  * Section 2.4.5: is the current sequence about bizarre hMSC semantics 
    clearer now? 

    -> not discussed so far

  * Section 2.5.3: a fluent might be TOP in a LTS state. I consider this
    as problematic (Christophe does not). The way fluents are used to prune 
    the induction process implicitly argue in favor of my position IMHO. If 
    a monitorable/controllable fluent is TOP in a LTS state, the machine 
    necessarily models classes of states, not agent states _per se_.

    -> Explicit consistency rule between agent state machines and agent states
       variables. 
    -> Why not numbering consistency rules??

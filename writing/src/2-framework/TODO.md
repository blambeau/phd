* The integration of all models in a coherent framework can be seen 
  as a contribution _per se_, IMO. The formalization is inspired yet
  different from Uchitel:2003. Consistency rules are all mine. Not 
  really important, though, as the sentence has been removed.

  -> ususal with a background section. 
  -> address the difference of semantics in related work chapter
  -> avoid wrong phrasing "the definition XXX, from [YYY]" if not the
     same semantics

* What is the reference about _agent interfaces_ (Jackson?) ?

  -> Zave & Jackson:1996 "Where are operations coming from?"
  -> Maybe Jackson:1995 "The world and the machine"

* Determinate agents are agents whose behavior _can_ be modeled with
  deterministic state machines only. It has been introduced previously
  but is not really known, I confess.

  -> ok. Might be clearer with explicit reference to a definition number

* 2.1 Running examples

  * Revisit the train example to match what is used in Chapter 4

* 2.2.2 On double use of LTS models

  * The discussion should probably be extended a bit now? Consistency
    rules are not introduced anymore.

* Section 2.2.2: 	Consistency rules are not introduced anymore.

  * not discussed so far

* 2.3.0 Introduction to State Machines

  * Is the concept of Terminating LTS really used ??
  
* 2.3.2 Systems as agent compositions

  * Add an image for composition
  
  * Better introduce the notation X -l> X' before its use here

* 2.4.2 Negative scenarios

  * Add an image for capturing neg sc with LTS and automaton

  * What about Pierre's comment about expressiveness of SC- ?

* Section 2.4.2: What older reference about negative **MSC**? I've put
  Uchitel:2002 now. Uchitel:2003 even says "our inclusion of negative
  scenarios in MSC specifications is, to the best of our knowledge, 
  novel". In admit that the notion of negative **scenario** is older.
  
  -> AVL & Willement 1998

* 2.4.5 Flowcharting scenarios ...

  * Say briefly why not all hMSCs define regular languages.

  * Find another definition for implied scenarios...

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



* 2.3.2 Systems as agent compositions

  * Add an image for composition
  
* 2.4.5 Flowcharting scenarios ...

  * Say briefly why not all hMSCs define regular languages.

* Section 2.5.3: a fluent might be TOP in a LTS state. I consider this
  as problematic (Christophe does not). The way fluents are used to prune 
  the induction process implicitly argue in favor of my position IMHO. If 
  a monitorable/controllable fluent is TOP in a LTS state, the machine 
  necessarily models classes of states, not agent states _per se_.

  -> Explicit consistency rule between agent state machines and agent states
     variables. 
  -> Why not numbering consistency rules??


%\subsubsection*{Rationale behind the generalization step}

%Our synthesis requirements include ``behavior generalization''. Looking at relation (\ref{relation:inductive-language-refinements}) we might ask ourselves what drives the generalization process and until when. By construction, the first automaton $A_0$ already meets the consistent system view conditions (\ref{relation:inductive-invariant}) and (\ref{relation:inductive-invariant-II}). Therefore, $A_0$ is a valid, yet trivial, solution. Why not simply use it?

%The answer is to be found in the Occam's principle stating that ``among all models explaining the world equally well, the simplest should be preferred''. Using grammar induction this amounts to searching for the \emph{smallest} automaton consistent with the positive and negative scenarios, also called the \emph{input sample}. The initial automaton $A_0$ is rarely the simplest model according to this criteria. 

%Looking for the smallest automaton consistent with an input sample is known to be NP-hard \cite{Gold:1978, Angluin:1978}. The RPNI algorithm offers a consistent approximated solution in polynomial time; this solution is the smallest consistent deterministic automaton when the input sample is rich enough, in particular when it forms a so-called \emph{characteristic sample} (see later) \cite{Oncina:1992}.

%\subsubsection*{A word about correctness}

%The decomposition step guarantees that the \emph{structural consistency} and \emph{consistent agent view} conditions hold. It is a straight application of the material given in Chapter~\ref{chapter:framework}. 

%The generalization invariant guarantees that the \emph{consistent system view} condition holds for the System LTS. Strictly speaking, the approach is correct only if this condition holds for the system re-composition $\system$. This might not be the case in presence of negative implied scenarios. This issue is further examined in Section~\ref{section:inductive-discussion}.


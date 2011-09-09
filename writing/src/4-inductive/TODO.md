* 4.1.3 -- Rationale behind the generalization step -> Discussion
* 4.1.3 -- A word about correctness -> Discussion
* 4.2.3 -- Is is possible to reverse the presentation: intuition -> math???
* 4.3   -- Note on terminology -> Discussion
* 4.3   -- Algorithm 1 -> Algorithm 4.1 (if possible)
           Resurect Pierre's remark on our strange use of affectation
           RPNI is a special case -> after explanation, but where ???
* 4.3.1 -- Make event labels in Image 4.4 bigger.
* 4.3.2 -- Rephrase explanation of GenerateQuery so as to address Axel's comments
           (page 76)
* 4.4.1 -- Remark about equivalence relations being invariant under state merging
           -> Discussion
* 4.5.2 -- Relation (4.9) should probably appear at beginning of the chapter
* 4.5.3 -- Give an example of ASM in action

%\subsubsection*{Rationale behind the generalization step}

%Our synthesis requirements include ``behavior generalization''. Looking at relation (\ref{relation:inductive-language-refinements}) we might ask ourselves what drives the generalization process and until when. By construction, the first automaton $A_0$ already meets the consistent system view conditions (\ref{relation:inductive-invariant}) and (\ref{relation:inductive-invariant-II}). Therefore, $A_0$ is a valid, yet trivial, solution. Why not simply use it?

%The answer is to be found in the Occam's principle stating that ``among all models explaining the world equally well, the simplest should be preferred''. Using grammar induction this amounts to searching for the \emph{smallest} automaton consistent with the positive and negative scenarios, also called the \emph{input sample}. The initial automaton $A_0$ is rarely the simplest model according to this criteria. 

%Looking for the smallest automaton consistent with an input sample is known to be NP-hard \cite{Gold:1978, Angluin:1978}. The RPNI algorithm offers a consistent approximated solution in polynomial time; this solution is the smallest consistent deterministic automaton when the input sample is rich enough, in particular when it forms a so-called \emph{characteristic sample} (see later) \cite{Oncina:1992}.

%\subsubsection*{A word about correctness}

%The decomposition step guarantees that the \emph{structural consistency} and \emph{consistent agent view} conditions hold. It is a straight application of the material given in Chapter~\ref{chapter:framework}. 

%The generalization invariant guarantees that the \emph{consistent system view} condition holds for the System LTS. Strictly speaking, the approach is correct only if this condition holds for the system re-composition $\system$. This might not be the case in presence of negative implied scenarios. This issue is further examined in Section~\ref{section:inductive-discussion}.

%The original RPNI algorithm can be seen as a particular instance of \textsc{QSM} when no query is generated or, equivalently, without the inner \textbf{while} loop. The advantage of \textsc{QSM} is that a finer control of the generalization offered by the state-merging operations can be obtained by validating these generalizations with an oracle, i.e. the end-user.



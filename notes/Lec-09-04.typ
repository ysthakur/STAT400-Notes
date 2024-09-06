= Lecture 9/4

== Probability functions

=== Sigma algebra

A sigma algebra is a collection of interesting events in some sample space.

A collection $cal(B)$ of subsets of a sample space $S$ is a sigma algebra if:
1. $emptyset in cal(B)$
2. $forall A in cal(B), A^c in cal(B)$
3. If ${A_i : i in bb(N)}$ is a countable collection such that $A_i in cal(B)$ for all $i$, then $union.big_(i in bb(N)) A_i in cal(B)$

=== Probability functions

Consider a sample space $S$ with a sigma algebra $cal(B)$.

A probability function is a function from events to probabilities ($cal(B) -> bb(R)$). It must satisfy the following axioms:
1. (finite measure) $P(S) = 1$
2. (positivity) $forall A in cal(B), P(A) >= 0$
3. (countable additivity) For $A_1$, $A_2$, $A_3$, ..., the collection of pairwise disjoint subsets of $S$ in $cal(B)$, we must have $ P(union.big_(i in bb(N)) A_i) = sum_(i=1)^oo P(A_i) $

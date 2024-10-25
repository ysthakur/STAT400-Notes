#set heading(numbering: "1.")

#align(center)[
  #text(weight: "bold", size: 17pt)[STAT400 Notes]
]

#outline(title: "Table of contents", indent: auto)

= Basic Terms

/ Parameters: Quantitative features of a population
/ Statistics: Quantitative features calculated using a sample
/ Deduction: A way of going from the population to the sample, e.g., if you get the class average (population) and then compare it to your personal score on an exam (sample), you can deduce that you did better than the average.
/ Inference: A way of going from the sample to the population (opposite direction from deduction). For example, if you get a 100 on an exam (sample) and you infer that you did better than the class average (population).

Inference and deduction goes in a circle. When developing a model, you estimate some parameters, then you make deductions about the population, then you infer population parameters, then you draw deductions about the population again.

/ Experiment: Repeatable task with well-defined outcomes
/ Sample space: The sample space for an experiment is the set of all possible outcomes of that experiment, denoted by $S$
/ Event: Any subset $E$ of the sample space $S$ attached to an experiment will be called an event associated with the experiment. To say that an event E has happened means that the outcome of the experiment was in the set $E$.
/ Simple event: An event with only one event in it

= Probability functions

== Sigma algebra

A sigma algebra is a collection of interesting events in some sample space.

A collection $cal(B)$ of subsets of a sample space $S$ is a sigma algebra if:
1. $emptyset in cal(B)$
2. $forall A in cal(B), A^c in cal(B)$
3. If ${A_i : i in bb(N)}$ is a countable collection such that $A_i in cal(B)$ for all $i$, then $union.big_(i in bb(N)) A_i in cal(B)$

== Probability functions

Consider a sample space $S$ with a sigma algebra $cal(B)$.

A probability function is a function from events to probabilities ($cal(B) -> bb(R)$). It must satisfy the following axioms:
1. (finite measure) $P(S) = 1$
2. (positivity) $forall A in cal(B), P(A) >= 0$
3. (countable additivity) For $A_1$, $A_2$, $A_3$, ..., the collection of pairwise disjoint subsets of $S$ in $cal(B)$, we must have $ P(union.big_(i in bb(N)) A_i) = sum_(i=1)^oo P(A_i) $

= Independent events

Two events $A$ and $B$ are independent if any of the following are true (all are equivalent):
- $P(A sect B) = P(A)P(B)$
- $P(A bar.v B) = P(A)$
- $P(B bar.v A) = P(B)$

= Random variables

A random variable $X$ maps outcomes in some sample space to real numbers, i.e., $X : cal(S) -> bb(R)$. A random variable measures a specific quantitative feature of the sample space outcome.

The *range* of $X$, the set of all possible values that $X$ can take, is denoted $cal(X)$.

With the new sample space, $cal(X)$, you can use the order relationship in real numbers and you can add, multiply, etc.

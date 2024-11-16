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

= Discrete distributions

== Geometric distribution <geometric-distribution>



= Continuous distributions

== Normal distribution

todo

== Gamma distribution

The gamma distribution is based on the gamma function, which extends the factorial function to complex numbers:

$ Gamma(alpha) = integral_0^oo x^(alpha - 1) e^(-x) dif x $

Some properties of $Gamma$:
- $Gamma(x) = x!$ if $x$ is a non-negative integer
- $Gamma(a + 1) = a Gamma(a)$

If you have a gamma distribution $"Gamma"(alpha, lambda)$, then its probability density function is

$ f_X(x) = cases(
  (lambda^alpha x^(alpha-1) e^(-lambda x))/Gamma(alpha) "if" x > 0,
  0 "otherwise"
) $

Note: there are two different parameterizations for $"Gamma"$:
- $"Gamma"(alpha, beta"/"lambda)$ (with a rate parameter)
- $"Gamma"(alpha, theta)$ (with a scale parameter)֫

The $alpha$ is the shape parameter. $beta = 1/theta$

== Exponential distribution

This is a special case of the gamma distribution: $"Exponential"(lambda) = "Gamma"(1, lambda)$. If you sum $n$ independent $"Exponential"(lambda)$ random variables, you get a $"Gamma"(n, lambda)$ random variable.

Application: Variables that model the amount of time you have to wait before something happens follow an exponential distribution. E.g., time between clicks of a Geiger counter.

This is the continuous analog of the #link(<geometric-distribution>, [geometric distribution]). Only the geometric and exponential distributions are *memoryless*.

== Chi-squared distribution

Also a special case of the gamma distribution: $chi_k^2 ~ "Gamma"(alpha = k/2, theta = 2)$.

Stuff in real life isn't distributed this way. Chi-squared is mostly just used for hypothesis tests. It's closely related to the standard normal distribution ($Z$): $chi_1^2 = Z^2$. In general:

$ chi_k^2 = (Z_1)^2 + (Z_2)^2 + ... + (Z_k)^2 $

= Relationships between variables

/ Large value: A value of some random variable is large if it's greater than the mean
/ Small value: A value of some random variable is small if it's less than the mean

/ Positive relationship: $X$ and $Y$ have a positive relationship if large values of $X$ are associated with large values of $Y$ and small values of $X$ are associated with small values of $Y$
/ Negative relationship: $X$ and $Y$ have a negative relationship if large values of $X$ are associated with small values of $Y$ and small values of $X$ are associated with large values of $Y$

== Covariance

$ "Cov"(X, Y) = E((X - mu_X)(Y - mu_Y)) $

When $X$ and $Y$ have a positive relationship, the covariance should be positive. When they have a negative relationship, the covariance should be negative.

Units of $"Cov"(X, Y)$ are $("units of" X) dot ("units of" Y)$. This is a problem, since the magnitude of the covariance depends on the units.

Properties:
- $"Cov"(X, X) = V(X)$
- $"Cov"(X, Y) = "Cov"(Y, X)$
- $"Cov"(a X + b Y, Z) = a"Cov"(X, Z) + b"Cov"(Y, Z)$

== Correlation coefficient

$ "Corr"(X, Y) = rho_(X, Y) = "Cov"(X, Y)/(sqrt(V(X))sqrt(V(Y))) $

This one is unitless, unlike covariance. It always lies in $[-1, 1]$.

$rho_(X, Y) = plus.minus 1$ iff there is a perfect linear relationship between $X$ and $Y$.

The correlation coefficient measures the extent of the linear relationship between $X$ and $Y$.

= Linear combinations of random variables

If you have $Y = a_1 X_1 + a_2 X_2 + ... + a_n X_n$, then $E(Y) = a_1 E(X_1) + ... + a_n E(X_n)$

Variance is more complicated:

$ V(Y) = "Cov"(Y, Y) = sum_(i=1)^n a_i^2 V(X_i) + 2 sum_(1<=i<=j<=n) a_i a_j "Cov"(X_i, X_j) $

If all the random variables $X_i$ are independent, then the covariance terms cancel out, meaning that:

$ V(Y) = sum_(i=1)^n a_i^2 V(X_i) $

= Random samples and statistics

/ Random sample: We say the collection of random variables ${X_1, X_2, ..., X_n}$ is a *random sample* of size $n$ from the population distribution $X$ if:
- The $X_i$s are identically distributed to the distribution of $X$, i.e., $X_i ~ X$
- The $X_i$s are mutually independent, i.e., joint pdf/pmf splits into its marginals

/ Statistic: A quantity calculated using a random sample.

/ Joint sample space: Suppose ${X_1, ..., X_n}$ is a random sample from population $X$ and $X$ takes values in $cal(X)$. The joint sample space for the random sample is $cal(X)^n = {(x_i, ..., x_n) | x_i in cal(X)}$.

The joint sample space is the set of all possible sample data for the random sample.

If $T$ is a statistic calculated using the random sample ${X_1, ..., X_n}$ with joint sample space $cal(X)^n$, then we can think of $T$ as the function

$ T : cal(X)^n -> bb(R) $

Therefore, $T$ is a random variable.

/ Sampling distribution: The associated probability distribution of $T$ above is called the sampling distribution of the statistic $T$.

== Central Limit Theorem

If you have a random sample of size $n$ from a distribution $X$ with $E(X) = mu$ and $V(X) = sigma^2$, then, if $n$ is large enough, the sample mean $overline(X)$ will approximately have the distribution $N(mu, sigma^2/n)$

= Estimators

== Parametric estimation

Supposeo the actual distribution has parameters $theta_1, theta_2, ..., theta_k$.

We want to estimate these parameters. The estimates are $hat(theta_1), hat(theta_2), ..., hat(theta_k)$

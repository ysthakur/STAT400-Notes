#align(center)[
  #text(weight: "bold", size: 17pt)[STAT400 Final Exam Review]
]

= 1.

$ P(|X-15| > 3) &= 1 - P(|X - 15| <= 3)\
&= 1 - P(-3 <= X - 15 <= 3)\
&= 1 - P(12 <= X <= 18)\
&= 1 - (P(X <= 18) - P(X < 12))\
&= 1 - (F_X (18) - F_X (12))\
&= 1 - F_X (18) + F_X (12) $

= 2. todo

= 3. todo

= 4. todo

= 5.

DO THIS WHEN YOU GET HOME

== 5.a. todo

== 5.b. todo

= 6. todo

= 7. todo

= 8. todo

== 8.a. todo

$ E(X Y) =  $

== 8.b. todo

= 9. todo

This one was in the homework so you can check

== 9.a. (done, not checked)

$ P(X = 4, Y = 2) &= P(Y = 2 | X = 4)P(X = 4)\
&= p_"Binom" (2; p = 0.7, n = 4) dot 0.2\
&= mat(4; 2) 0.7^2 dot 0.3^2 dot 0.2\
&= 0.05292 $

== 9.b. todo

$ P(X = Y) &= sum_(x=0)^4 mat(4; x) 0.7^x dot 0.3^(4-x) dot P(X = x) $

Expand manually I guess?

== 9.c. todo

Joint pmf is a table of $P(X = x, Y = y)$

Marginal pmf of $Y$ is just $P(Y = y)$

= 10...11 todos

= 12. todo

$ P(X = 6 | Z = 20) &= P(X = 6 sect Z = 20)/P(Z = 20)\
&= P(X = 6 sect Y = 14)/P(X + Y = 20) $

= 13. todo

== 13.a. (done, checked)

Helper:

$ integral x e^(b x) dif x = (x e^(b x))/b + C - integral e^(b x)/b dif x = (x e^(b x))/b - e^(b x)/b^2 + C $

$ P(3X + Y <= 3) &= integral_0^1 integral_0^(3-3x) p_X (x) p_Y (y) dif x dif y\
&= integral_0^1 integral_0^(3-3x) 5e^(-5x) dot 3e^(-3y) dif y dif x\
&= 15 integral_0^1 e^(-5x) integral_0^(3-3x) e^(-3y) dif y dif x\
&= 15 integral_0^1 e^(-5x) (e^(-3y)/(-3))_0^(3-3x) dif x\
&= 15 integral_0^1 e^(-5x) (e^(-9+9x)/(-3) - 1/(-3)) dif x\
&= 5 integral_0^1 e^(-5x) (-e^(9x-9) + 1) dif x\
&= 5 integral_0^1 -e^(4x-9) dif x + 5 integral_0^1 e^(-5x) dif x\
&= 5 e^(-9) integral_0^1 -e^(4x) dif x + 5 (e^(-5x)/(-5))_0^1\
&= -5 e^(-9) (e^(4x)/4)_0^1 - (e^(-5x))_0^1\
&= -5 e^(-9) (e^4/4 - 1/4) - (e^(-5) - 1)\
&= (-5 e^(-5))/4 + (5 e^(-9))/4 - e^(-5) + 1\
&= (-9 e^(-5))/4 + (5 e^(-9))/4 + 1 $

Verified with Symbolab

== 13.b. todo

$ P(X >= Y) &= integral_0^oo integral_y^oo p_X (x) dot  $

todo incomplete

== 13.c. todo

= 14. todo

= 15.

== 15.a. (done, not checked)

Number of elements:

If has 1 green ball: $2 dot 2 dot 3$

If no green balls: $2 dot 2 dot 3$

Total: $2 dot (2 dot 2 dot 3) = 24$

== 15.b. (done)

Drawn on paper (page 146, outside notebook)

== 15.c. (done, checked)

Done on paper, more or less (page 147, outside notebook)

== 15.d. (done, checked)

This is the hypergeometric distribution with $N = 8$, $M = 5$, and $n = 3$

= 16. todo

= 17.

== 17.a. (done, not checked)

$P(F sect H) = 1/3 dot 1/2 = 1/6$

$P(U sect H) = 2/3 dot 1 = 2/3$

$ P(F | H) &= P(F sect H)/P(H)\
&= P(F sect H)/(P(F sect H) + P(U sect H))\
&= (1/6)/(1/6 + 2/3)\
&= 1/5 $

== 17.b. (done, not checked)

$P(F sect "HH") = 1/3 dot 1/2 dot 1/2 = 1/12$

$P(U sect "HH") = 2/3 dot 1 dot 1 = 2/3$

$ P(F | "HH") &= P(F sect "HH")/P("HH")\
&= P(F sect "HH")/(P(F sect "HH") + P(U sect "HH"))\
&= (1/12)/(1/12 + 2/3)\
&= 1/9 $

== 17.c. (done)

0, because the unfair coins will never show tails.

= 18...21 todos

= 22. todo

$ E(overline(X)^2) &= E((1/n sum_(i=1)^n X_i)^2) \
&= E(1/n^2 (sum_(i=1)^n X_i)^2) \ $

I have no idea how to solve this

= 23...25 todos

= 26. todo

== 26.a. (done, not checked)

$ E(hat(theta)_i) &= E(1/i sum_(j=1)^i X_j) \
&= 1/i E(sum_(j=1)^i X_j) \
&= 1/i (i mu)\
&= mu $

== 26.b. todo

$ V(hat(theta)_i) &= E(hat(theta)_i^2) - E(hat(theta)_i)^2\
&= E((1/i sum_(j=1)^i X_j)^2) - E(1/i sum_(j=1)^i X_j)^2\
&= E((1/i sum_(j=1)^i X_j)^2) - E(1/i sum_(j=1)^i X_j)^2 $

todo i have no idea how to solve this

= 27. todo

= 28. (done, not checked)

$E(X) = 10$, $V(X) = 20$

We know that $overline(X) ~ "Normal"(mu = 10, sigma^2 = 20/49)$ thanks to the Central Limit Theorem.

In terms of the standard normal distribution, this is $overline(X) = 20/49 Z + 10$

So $(overline(X) - 10) dot 49/20 = Z$

$ P(|overline(X) - 8| > 3) &= 1 - P(|overline(X) - 8| <= 3)\
&= 1 - P(-3 <= overline(X) - 8 <= 3)\
&= 1 - P(5 <= overline(X) <= 11)\
&= 1 - (P(overline(X) <= 11) - P(overline(X) < 5))\
&= 1 - P(overline(X) <= 11) + P(overline(X) < 5)\
&= 1 - Phi((11 - 10) dot 49/20) + Phi((5 - 10) dot 49/20)\
&= 1 - Phi(49/20) + Phi((-49)/4)\ $

= 29...32 todos

= 33. todo

The probabilities must sum to 1, so:

$ 1 &= theta(1 - theta) + (1 - theta) + theta^2\
arrow.double.r 1 &= theta - theta^2 + 1 - theta + theta^2\
arrow.double.r 1 &= 1 $

$theta$ is not constrained by that equation, so it can be any real number.

$ E(X) = 2theta(1 - theta) + 4(1 - theta) + 6theta^2 = 4theta^2 - 2theta + 4 $

== 33.a. todo

Method of moments:

$4theta^2 - 2theta + 4 = 22/7$, use the quadratic formula to solve.

Maximum likelihood:

$ cal(l)(theta) = ln((theta(1 - theta))^4 dot (1 - theta)^2 dot theta^2) = 4 ln(theta(1 - theta)) + 2ln(1 - theta) + ln(theta) $

$ 0 &= cal(l)'(theta)\
0 &= dif/(dif theta) (4 ln(theta(1 - theta)) + 2ln(1 - theta) + ln(theta))\
0 &= (4(1 - 2theta))/(theta(1 - theta)) + (-2)/(1 - theta) + 1/theta\
0 &= ((4(1 - 2theta)) + (-2theta) + (1 - theta))/(theta(1 - theta))\
0 &= (5 - 11theta)/(theta(1 - theta))\
theta - theta^2 &= 5 - 11theta $

Use quadratic formula to solve again.

== 33.b.

Method of moments: Same

Maximum likelihood: Same

== 33.c.

Method of moments: Same

Maximum likelihood: Same

== 33.d. todo

Method of moments: Same

Maximum likelihood: Same

Since $x=3$ isn't included in the probability distribution table, our assumed distribution is probably not very good.

= 34...41 todos

= 42.

== 42.a. (checked)

$ E(X) &= 1/n sum_(i=1)^n X_i\
hat(alpha)/(hat(alpha)+1) &= overline(X)\
hat(alpha) &= hat(alpha) overline(X) + overline(X)\
hat(alpha) overline(X) - hat(alpha) &= -overline(X)\
hat(alpha) &= (-overline(X))/(overline(X) - 1) $

https://math.stackexchange.com/q/3185959/774737 has the same answer, so it's probably correct

== 42.b. (checked)

$ cal(l)(alpha) &= ln product_(i=1)^n f(x_i; alpha)\
&= ln product_(i=1)^n Gamma(alpha+1)/(Gamma(alpha)Gamma(1)) dot x_i^(alpha-1)(1-x_i)^(1-1)\
&= ln product_(i=1)^n alpha dot x_i^(alpha-1)\
&= sum_(i=1)^n ln alpha + ln(x_i^(alpha-1))\
&= sum_(i=1)^n ln alpha + (alpha-1) ln x_i $

$ 0 &= dif/(dif alpha) cal(l)(alpha)\
0 &= dif/(dif alpha) sum_(i=1)^n (ln alpha + (alpha-1) ln x_i)\
0 &= sum_(i=1)^n dif/(dif alpha) (ln alpha + (alpha-1) ln x_i)\
0 &= sum_(i=1)^n (1/alpha + ln x_i dif/(dif alpha) (alpha-1))\
0 &= sum_(i=1)^n (1/alpha + ln x_i)\
0 &= n/alpha + sum_(i=1)^n ln x_i\
-sum_(i=1)^n ln x_i &= n/alpha\
-alpha sum_(i=1)^n ln x_i &= n\
alpha &= (-n)/(sum_(i=1)^n ln x_i) $

$ hat(alpha)_"MLE" = (-n)/(sum_(i=1)^n ln x_i) $

(this is the same MLE as https://math.stackexchange.com/q/4057637/774737, so it's probably correct)

Verify that this is a local maximum:

$ cal(l)''(alpha) = dif/(dif alpha) (n/alpha + sum_(i=1)^n ln x_i) = (-n)/(a^2) $

$cal(l)''(alpha)$ must always be negative, because $n$ is always positive and $alpha^2$ is always positive. Therefore, $hat(alpha)_"MLE"$ is a maximum likelihood estimator for $alpha$.

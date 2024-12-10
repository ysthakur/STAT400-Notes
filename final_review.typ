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

= 5. todo

= 6. todo

= 7. todo

= 8. todo

== 8.a. todo

$ E(X Y) =  $

== 8.b. todo

= 9. todo

= 10. todo

= 11. todo

= 12. todo

= ... todos

= 42. todo

== 42.a.

$ E(X) &= 1/n sum_(i=1)^n X_i\
hat(alpha)/(hat(alpha)+1) &= overline(X)\
hat(alpha) &= hat(alpha) overline(X) + overline(X)\
hat(alpha) overline(X) - hat(alpha) &= -overline(X)\
hat(alpha) &= (-overline(X))/(overline(X) - 1) $

todo verify

== 42.b.

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

todo verify

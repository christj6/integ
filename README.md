integ
=====

Approximates definite integrals of functions using bounds.

First, start it up (:l Integ.hs)

Decide on the function you'll use (let f x = x^2)

Call the approx function (follows the syntax: approx f 0 10 100)

In that instance, f refers to the function,
0 refers to the starting bound,
10 refers to the ending bound,
and 100 refers to the number of divisions.

You will get an approximation. Put in a giant number for the # of divisions and it's about as good as a normal integral.

In the future, the plan is to include more approximation methods, and some other features.

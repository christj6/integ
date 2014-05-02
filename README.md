integ
=====

Approximates definite integrals of functions using bounds.

First, start it up:

> ghci

> :l Integ.hs

Decide on the function you'll use:
> let f x = x^2

Call the approx function -- follows the syntax: 
> approx f 0 10 100

In that instance, f refers to the function,
0 refers to the starting bound,
10 refers to the ending bound,
and 100 refers to the number of divisions.

You will get an approximation. Put in a giant number for the # of divisions and it's about as good as a normal integral.

In the future, the plan is to include more approximation methods, and some other features.

-----------------------------
An example:

let f x = x^2

approx f 0 10 100

We get: 333.32500000000005

approx f 0 10 10000

We get: 333.33333249999947

approx f 0 10 100000

We get: 333.33333332500325


Is it close?

x^2 dx = (1/3)x^3 + c

x^2 dx from 0 to 10 = (1/3) x 10^3 - (1/3) x 0^3 = 1000/3 = 333.33 (repeating)

It's pretty close.

-------------------
Example output for derivative approximation function:

Interesting behavior as delta-x gets closer and closer to 0.

> *Integ> derive (^2) 2 0.000001

> 4.0000010006480125

> *Integ> derive (^2) 2 0.0000001

> 4.000000091153311

> *Integ> derive (^2) 2 0.00000001

> 3.999999975690116

> *Integ> derive (^2) 2 0.000000001

> 4.000000330961484

> *Integ> derive (^2) 2 0.0000000001

> 4.000000330961484

> *Integ> derive (^2) 2 0.00000000001

> 4.000000330961484

> *Integ> derive (^2) 2 0.000000000001

> 4.000355602329364

> *Integ> derive (^2) 2 0.0000000000001

> 3.9968028886505635

> *Integ> derive (^2) 2 0.00000000000001

> 4.085620730620576

> *Integ> derive (^2) 2 0.000000000000001

> 3.5527136788005005

> *Integ> derive (^2) 2 0.0000000000000001

> 0.0

--------------

I tested the arcLength approximation by going to Wolfram (http://www.wolframalpha.com/) and entering something along the lines of "arc length of y=sin(x)^2 from x=0 to pi" (function and bounds vary).

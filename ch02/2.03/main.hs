{- 
Theorem: For any integer n, there exist infinitely many DiffTree representations of n.

Proof by Construction:

Let n be an arbitrary integer value.

We can construct a DiffTree representation t_n for n as follows:
If n = 1, then t_n = One.
If n ≠ 1, then n can be expressed as a difference of two positive integers a and b, where a > b. We can recursively construct DiffTree representations t_a and t_b for a and b, respectively, and then construct t_n = Diff t_a t_b.
Now, consider the DiffTree t'_n = Diff t_n (Diff One One). Since Diff One One represents the integer value 0, we have:

Copy code
t'_n = Diff t_n (Diff One One)
     = Diff t_n 0
     = t_n
Therefore, t'_n is a valid representation of n, but it has a different structure from t_n.
We can repeat this process by constructing t''_n = Diff t'_n (Diff One One), which will again be a valid representation of n with a different structure.
By continuing this process indefinitely, we can construct infinitely many DiffTree representations of n by repeatedly applying the Diff constructor with One or other DiffTree representations.
Conclusion:

Since we can construct infinitely many DiffTree representations for any given integer n by repeatedly applying the Diff constructor with One or other DiffTree representations, we have shown that there exist infinitely many DiffTree representations for any integer n.
-}

import DiffTree

isZero t = t == zero

successor t = Diff t (Diff zero One)

predecessor t = Diff t (Diff One zero)

doffTreePlis t1 t2 = Diff t1 (Diff zero t2)

main = do
  print "ok"
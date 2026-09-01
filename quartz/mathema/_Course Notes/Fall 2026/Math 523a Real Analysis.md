Fall 2026
Instructor: Sunder Sethuraman

# Aug. 24
operations on a set.
- complement of a subset
- union
- intersection
- de morgan's law
- symmetric difference
	- $A\triangle B=(A\cap B^c) \cup (A^c\cap B)=(A\setminus B)\cup(B\setminus A)$
- making a countable union a disjoint countable union
- $\limsup A_n=\bigcap_{m=1}^\infty\bigcup_{i=m}^\infty A_i$ is the set of $a\in A_n$ for infinitely many $n$.
	- $\{a\in A: \forall m\geq 1, \omega\in \bigcup_{i=m}^\infty A_i\}$
	- $\{a\in A: \forall m\geq 1, \exists n\geq m \ s.t. a\in A_n\}$
- $\liminf A_n=\bigcup_{m=1}^\infty\bigcap_{i=m}^\infty A_i$ is the set of $a\in A_i$ for all sufficiently large $i$.
	- $\{a\in A: \exists m\geq 1 \ s.t. a\in\cap_{i=m\^\infty} A_i$
	- $\{a\in A: \exists m\geq 1 \ s.t. a\in A_i \ \forall i\geq m\}$
	- $\liminf A_n\subset\limsup A_n$

ex: $A_n=\{[0,1/n]: n=0\mod2\}\cup\{[1-1/n,1]: n=1\mod2\}$
- $\limsup A_n=\{0,1\}$
- $\liminf A_n=\varnothing$


# Aug. 26
for monotone sets, $\limsup A_n=\liminf A_n$. Union if increasing, intersection is decreasing.

### Measures!
Initial ideas. cant really use a power set and enforce our measure function enforces the right properties.

- def: a collection $\mathcal F$ of subsets of $\Omega$ is an algebra if
	- $\varnothing\in\mathcal F$ 
	- $\mathcal F$ is closed under complement
	- is closed under finite intersection and union

- def $\sigma$-algebra is an algebra closed under countble union (and intersection)

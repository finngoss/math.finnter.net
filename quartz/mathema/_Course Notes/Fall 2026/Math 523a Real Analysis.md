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

didnt take notes. but it was all bout algebras, sigma algebras, and measures

# Sept. 2
>[!example] finitely additive but not countably additive measure
> $\Omega=\R, \mathcal F=\mathcal P(\R), \mu(\Lambda)=\begin{cases}0 & |\Lambda|<\infty \\ \infty & |\Lambda|=\infty \end{cases}.$
> $\mu(\phi)=0$
> finitely additive: let $\Lambda_1,\dots,\Lambda_n$ be disjoint sets and all fininte. then measure of their union is sum of their measures is 0.
> if one is is infinite, union is infinite so its measure is infinite.
> not countably additive: take $\Lambda_i=\{i\}, i\geq 1$. finite. but union is infinte </3

## Properties of Measures
- Monotnicity
	- If $A\subset B, \mu(A)\leq \mu(B)$
- Additivity of disjoint union
- Subadditivity of arbitrary union
- Continuity from above
	- monotone increasing. 
	- $\lim_{n\to\infty} \mu(A_n)=\mu(\U_{n\geq 1} A_n)$
- Continuity from below ( extra stuff)
	- monotne decreasing, but first/largeste set has to have finite measure!
	- $\lim_{n\to\infty}\mu(A_n) \mu(A_n)=\mu(\N_{n\geq1} A_n)$


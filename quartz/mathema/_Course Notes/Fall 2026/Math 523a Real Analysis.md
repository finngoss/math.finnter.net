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


# Thursday September 9th
Last time (I missed class!)
>[!definition] Outermeasure
>1. $\nu$ is an outermeasure on $(\Omega,\mathcal P(\Omega))$ if the following hold:
>2. $\nu(\varnothing)=0$
>3. $A\subset B \Rightarrow \nu(A)\leq\nu(B)$
> if $\{A_i\}\subset\mathcal P(\Omega) \Rightarrow \nu(\U_i A_i)\leq\sum_i\nu(A_i)$

We denote $\nu$-measurable sets $F$. $A\in\mathcal P(\Omega)$ is $\nu$-measureable if  $\nu(E)=\nu(E\n A)+\nu(E\n A^\complement) \ \forall E\in\mathcal P(\Omega)$.

>[!theorem] 
>The set of $\nu$-measurable sets $F$ is an $r$-algebra and $\nu|_F$ is a measure on $(\Omega, F)$.

>[!proof]-
> last time proved that $F$ is an algebra. Need to show that $F$ is stable under countable unions.
> Reduction: Let $\{A_i\}\subset F$.
> Write $U_i A_i= A_1\u \U_{n\geq2}\left(A_i\setminus \U_{j=1}^{i-1} A_j\right)$ disjoint union.
> Need show stable under countable disjoint union.
> Let $\{A_i\}\subset F$ be disjoint.
> Write $\nu(E)=\nu(E\n \U_{i=1}^n A_i)+\nu(E\n(\U_{i=1}^n A_i)^\complement)$
> as $\U_{i=1}^n A_i\in F$ (since $F$ is an algebra), we have by monotonicity that
> Write $\nu(E)\geq\nu(E\n \U_{i=1}^n A_i)+\nu(E\n(\U_{i=1}^\infty A_i)^\complement)$
> Let $E'= E\n U^n A-i$. Write $\nu(E')=\nu(E\n U^n A_i)=\nu(E'\n A_1)+\nu(E'\n A_1^\complement)$ as $A_1$ is measureable.
> $=\nu(E\n A_1)+\nu(E\n\U_{i=2}^n A_2)$. as $\{A_i\}$ is disjoint.
> By induction, $\nu(E\n \U^n A_i)=\sum^n\nu(E\n A_i)$
> $\nu(E)\geq\sum^n \nu(E\n A_i)+\nu(E\n(\U^\infty A_i)^\complement)$
> As $n\to\infty$, we have > $\nu(E)\geq\sum^\infty \nu(E\n A_i)+\nu(E\n(\U^\infty A_i)^\complement)$
> $\geq\nu(E\n\U^\infty A_i)+\nu(E^\infty A_i)^\complement$ by the subadditivity of $\nu$
> $\geq \nu(E)$ by subadditivity again!
> we have recovered measurability <3
> Finally, to show $\nu|_F$ is a meausre we require
> 1. $\nu|_F(\varnothing)=0$ by def.
> 2. Let $\{A_i\}\subset F$ disjoint. Let $A=\U A_i$. We have shown in previous part of proof of this. Choose $E$ to be $A$, then we get it!

>[!definition] Complete Measure Space
>Let $(\Omega, F, \mu)$ be a measure space.
>1. We say $N\in F$ is a null set if $\mu(N)=0$.
>2. We say $(\Omega, F, \mu)$ is a complete measure space when $F$ contains all subsets of null sets. Ie if $N$ is  a null set and $A\subset N$, then $A\in F$ (and $\mu(A)=0$).

>[!example]
>Let $\Omega=\mathbb N, F=\mathcal P(\Omega),$ and $\mu$ be the counting measure.
>Then the only null set is $\varnothing$, so this measure space is complete.

>[!example] Nonexample
> $\Omega=[0,1], \F=\sigma\{\varnothing, \Omega, [0,1/4), (1/4], (1/2,1]\}$
> $\mu(\varnothing)=0, \mu(\Omega)=1, \mu([0,1/4))=0, \mu((1/4])=\mu((1/2,1])=1/2$
> Is not complete! $F$ does not include subsets of the null set $[0,1/4]$!

>[!remark]
>Completion is useful technically! It can be achieved by enlarging the spaces.

>[!theorem]
>Let $(\Omega, F,\mu)$ be a meaure space. 
>Then there exists a a complete space $(\Omega,\bar F,\bar\mu)$ that is the **completion** of the measure space.
>$\bar F=\{A\u B: A\in F, B\subset N, N \ \text{is a} \ \mu\text{-null set}\}$
>$\bar \mu(E)=\bar \mu(A\u B)=\mu(A)$ on $\bar F$ is the unique extension which agrees with $\mu$  on $\F$.

>[!example]
>$(\Omega, F=\nu\text{-measurable sets}, \nu|_F)$ where $\nu$ is an outermeasure.

>[!lemma]
>All sets $A\in\mathcal P(\Omega)$ where $\nu(A)=0$ are $\nu$-measureable and $A\in F$.
>Hence, $(\Omega, F, \nu_F)$ is complete.

> [!proof]-
> let $A$ be such thatt $\nu(A)=0$. Consider $\nu(E)\leq \nu(E\n A)+\nu(A\n A^\complement)\leq \nu(E)$ by subadditivity.
> But $\nu(E\n A)\leq \nu(A)=0$ by monotoniciy
> $\nu(E\n A^\complement)\subset \nu(E)
> $\nu(E)=\nu(E\nA)+\nu(E\n A^\complement)$





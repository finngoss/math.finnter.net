---
title: Algebraic Number Theory
tags:
---

#field #algebra #number-theory 

These notes are based on a course taught by Sam Raskin in Spring 2026. Any errors are my solely mine, and much of the content has been edited and extrapolated on. As of now these notes are aimed at an undergraduate level, though they may grow over time to include more advanced topics.

- right now, these notes are mostly about global fields, though this might change.

# Introduction
## Algebra, Algebraic Numbers, and Algebraic Integers
As a field, [[algebra]] is roughly concerned with objects that can be described with finitary operations. Transcendental numbers like $e$ or $\pi$ require limits to compute and are more at home in analysis. The rudimentary objects of algebraic number theory are, of course, algebraic numbers!

> [!definition] **Algebraic Number**
> An **<u>algebraic number</u>** is a root of a polynomial with coefficients in $\Q$. We let $\bar Q$ denote the ring of algebraic numbers, that is the algebraic closure of $\Q$.

> [!example] Some algebraic numbers
> - any rational number
> - $\sqrt{ 2 }$, root of $t^2 -2$ 
> - $\sqrt{\sqrt2+\sqrt3}$, root of ...
> - $i$, root of $t^2 +1$
> - $\zeta_3 = \frac{-1+i\sqrt3}{2}$, root of $t^2+t+1$
> - $\zeta_n=e^{2\pi i / n}$, root of $t^n -1$


[[Galois Theory]] allows us to move from just an algebraic integer to a whole package of algebra. For example, the minimal polynomial of $\sqrt2$ is $t^2-2$, with splitting field $\Q[\sqrt2]=\{a+b\sqrt2 : a,b\in\Q\}$ and Galois group $\Z/2\Z$. Similarly, the root $\sqrt[3]{2}$ of $t^3-2$ gives us $\Q(\sqrt[3]{2},\zeta_3)$ with Galois group $S_3$. The splitting field and Galois group themselves may tell us more information about our original polynomials and algebraic integers. Solvable Galois groups correspond to whether or not the polynomial admits radical roots ([[Abel-Ruffini Theorem]]). As a measure of the symmetries between roots, a smaller Galois group may correspond to special algebraic properties of the polynomial.

Looking closer at $\alpha=\sqrt{\sqrt2+\sqrt{3}}$. we have $\Q[\alpha]\subset\Q[\alpha,i]$. The first extension has degree 8 over $\Q$, while the second (which happens to be the splitting field of the minimal polynomial of $\alpha$) has degree 16 over $\Q$. The Galois group is $D_4\times\Z/2\Z$. Rather than viewing $\alpha$ as a single algebraic number, a Galois theoretic perspective encourages us to view it alongside its conjugates and the symmetries between them. 

When we expand $\Q$ to allow polynomials to split, we also expand our notion of "integrality."

> [!definition] Algebraic Integer
> An **algebraic integer** is a root of a monic polynomial with $\Z$-coefficients. We denote the set of all algebraic integers as $\bar\Z$.

> [!example] Some algebraic integers
> - any integer
> - \sqrt2
> - \zeta_n
> - any root of $t^{17} - t^3 + 2$
> - $\phi=\frac{\sqrt5+1}{2}\in\bar\Z$, while $\frac{\sqrt5}{2},\frac{1}{2}\notin\bar\Z$

> [!exercise]
> If $x\in\Q$ is an algebraic integer, then $x\in\Z$ (this is referred to as the rational root test).
 
Given that any polynomial has a finite degree, it follows that any algebraic number must live in a finite field extension of $\Q$.

> [!definition] Number Field
> A **number field** is a finite field extension of $\Q$.
> Given a number field $F$, let $\O_F\subset  F$ denote its subset of algebraic integers. 

Note that any number field may be embedded into $\bar\Q$.

Algebraic number theory is heavily concerned with the structure of $\O_F$ for a given number field, and as it turns out $\O_F\subset F$ is a subring (thus $\bar\Z$ is a subring of $\bar \Q$, a fact we will prove later).

It's necessary to pause and consider how our assumptions about arithmetic may break down in some rings of algebraic integers. Most importantly, the unique factorization and the fundamental theorem of arithmetic that we take for granted in the integers fail in many other settings.

> [!warning] No unique factorization in $\Q[\sqrt {-5}]$
> Let $F=\Q[\sqrt{-5}]$ and consider the algebraic integer $6\in O_F$.
> $6=2\cdot 3=(1+\sqrt{-5})(1-\sqrt{-5})$.
> Unique factorization fails!

So how is one to do number theory in a setting where numbers themselves no longer behave as expected? The innovation algebraic number theory makes is in shifting our attention away from individual numbers and towards the world of ideals. It happens that every non-zero ideal in $\O_F$ is uniquely a product of prime ideals. This result is known as **unique factorization in Dedekind domains**, sufficiently nice domains which will be defined shortly.

As illustrated by the Galois exposition above, the algebra associated with a number carries a remarkable amount of information, much of which can be translated into arithmetic statements that are right at home in classical number theory.

# Preliminaries

# Commutative Algebra Crashcourse
will eventually be move to [[algebra]] notes.

# Dedekind Theory
factorization in O_F.
dedekind domain
DVRs and Unique Factorization
Unique Factorization in Dedekind Domains

# Minkowksi Theory


# Class Group and Number

# Cyclotomic Fields

# Quadratic Reciprocity

# Pell's Equation

# Other Quadratic  Forms

# Units, Dirichlet's Unit Theorem

# Hilbert's 90
- it's easier to do calculations after tensoring up!
# Kummer Theory

# Counting Ideals

# Dirichlet's Class Number Formula
Riemann Zeta

# Adelic Picture
puts finite primes on equal footing.

Spec O_F.

Archimedean Valuation: Complex embedding also gives you a notion of size.

non archimedean: at each prime you get a notion of the size of an element. Picture it as points of some space.





# midterm review

Algebraic numbers/integers
number fields and subring of algebraic integers

algebraic integers are eigenvalues of integral matrices/lattice transformations


For a degree $d$ field extensions $F/Q$, $O_F\simeq Z^d$ as an additive group. 

For $L/K$ finite extension of fields, $tr_{L/K}:L\to K, nm_{L/K}:L\to K$.
Extension of degree $d$ has an additive basis of degree $d$. Eg $Q[t]/f(t)$ has basis $\{1,t,...,t^{d-1}\}$.

Trace is addidtive, Norm is mulitplicative!

If $L/K$ is a fintie separable field extension, trace pairing non-degenerate ( for a nonzero v, there exists w such that Tr(vw)\neq0)

If $A/k$ is a separable $k$-algebra, then $A\otimes\bar k\simeq\prod_{i=1}^n \bar k$ . where $n=\dim_k A$
an extension being separable means rootsof a mininmal polynomial that splits are distinct
If $K/k$ is a separable extension of degree $n$, then there exist $n$ distinct embeddings of $K\to\bar k$ 
A separation is Galois if every embedding $i:K\to \bar k$ has the same image.
$K/k$ Galois, then $|\text{Gal}(K/k)|=[K:k]$

separability is like diagonalizability of the multiplication matrix acting on $K\otimes_k\bar k\simeq \prod \bar k$
If $K/k$ is separable, trace of an element the sum of embeddings, norm is the product of embeddings 
Variant: if $K/k$ is aGalois, $tr(\omega)=\sum_{\sigma\in \text{Gal}(K/k)}\sigma(\omega)$, norm is similarly product of conjguates


--
Factorization in $O_F$ breaks down! so we want to consider factorization of ideals into prime ideals....3


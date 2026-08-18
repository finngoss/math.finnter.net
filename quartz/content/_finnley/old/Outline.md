# 0.  Preliminaries
## 0.1. Natural Density
What sorts of sets can I consider natural density on?

According to arXiv:1803.06481v1 The density of visible points in the Amman-Beenker point set by Gustav Hammarhjelm, September 23, 2018:
- Locally finite point sets $\mathcal{P}\subset\mathbb{R}^d$ has an asymptotic density if $\lim_{R\to\infty}\frac{|(\mathcal{P}\cap RD)|}{vol(RD)}=\theta(\mathcal{P})$ holds for all Jordan measurable $D\subset\mathbb{R}^d$ 
Peano-Jordan Measure, also called the Jordan content since it isn't technically a measure in the modern sense!

But it looks like it's exactly what I need. defined on half open intervals, I can define the measure on the fundamental tile/region/domain of each lattice! its kinda perfect actually

[[Jordan content and Natural Asymptotic Density]]

Involves a lower and upper bound... literally exactly what Kelly and I have been trying to do!
https://mathworld.wolfram.com/JordanMeasure.html

I need to come up with a rigorous definition of the density of visible lattice points on any lattice.

## 0.2. What is a Lattice?
- A finitely generated free abelian group
	- https://doc.sagemath.org/html/en/reference/modules/sage/modules/free_quadratic_module_integer_symmetric.html
	- https://doc.sagemath.org/html/en/reference/quadratic_forms/index.html
	- equipped with a non degenerate bilinear form LxL\to\Z?
	- ambient quadratic space Q^n?
- A subspace of $\mathbb{Z}^n$
- Identifiable with some sort of quotient space? Toroidal space?
	- Chinese Remainder Theorem
- Cosets $x+\Lambda$ for some $x\in\mathbb{Z}^n?$
- Affine subspaces, hyperplanes, solutions to systems of linear equations
- Crystallography!
- Tiling Theory!


I think I need to only consider lattices that are proper SUBGROUPS of $\Z^n$, meaning they must pass through the origin. Contain inverses (easy). Closed under vector addition and subtraction (easy). Identity (easy). whatever

I think the "visibility from a point x of a set = visibility from the origin a set translated by x" lemma will serve as my workaround for considering translated lattices. Plus these then serve as the cosets of sublattice! for all x\in\Z^n

Lattice terminology:
- m-dimensional lattice
- Matrix generting a lattice, basis of a lattice
- fundamental parallelotope/domain/region
	- Gramian and m-dimensional volume of fundamental tile
- Unimodular Lattices (Gramian = 1)
- Equivalent Lattices
- Congruent Lattices
- Dual Lattices
- discriminant
- even lattices
- root lattices

https://aeb.win.tue.nl/latt/lattices.pdf this is useful source

I think it's important for me to categorize what a lattice is early on. This will make apparent the connections I'm drawing between so many fields of math, simply by how many ways we can view lattices!

Omg my research is all about how we view lattices that is so beautiful! <3  mathematically and metamathematically awww

This part is also going to involve a sagemath bootcamp so I can effectively carry out computations and make useful graphics

# 1. History and Overview of Visible Lattice Points
This parts gonna be really hard. A review of the classical results related to lattices and visible lattice points as well as an overview of what the modern literature has focused on.
## 1.1 Classical Results
-  Sphere packings! Leech and E8 Lattices
	- Conway and Sloane
- Density of visible lattice points (I think I'm just gonna start calling this visibility) on Z^n is 1/zeta(n)
	- several classical proofs for this. Ill detail them later...
	- Apostol
	- Hardy Wright
	- On the probability that _k_ positive integers are relatively prime JE NYman
		- do i need this at all? probabyl not
- Connections to Farey Diagram
	- Hatcher's Topology of Numbers
- Invisibile figures
	- of every shape woahh
	- of every size woah


## 1.2 Overview of Current Literature

### Lattice point density on non-regular tilings!
- arXiv:1803.06481v1
	- The density of visible points in the [[Amman-Beenker point set]]
	- Gustav Hammarhjelm
	- September 23, 2018:
### Discrete Geometry
- arXiv:1509.02201v2
	- Primitive Points in Rational Polygons
	- Barany et al
	- 31 July 2019
### Fourier Transform, Dirichlet Series, Bragg part, crystallography!
- arXiv:math-ph/9903046v1
	- Some remarks on the visible points of a lattice
	- Baake, Grimm, Warrington
	- 30 Mar 1999

### kth power free integers, pure point diffraction spectra, crystallography! Fourier inversion and Poisson summation
- [arXiv:math/9906132](https://arxiv.org/abs/math/9906132)
	- Diffraction from visible lattice points and kth power free integers
	- [Michael Baake](https://arxiv.org/search/math?searchtype=author&query=Baake,+M) (Tuebingen), [Robert V. Moody](https://arxiv.org/search/math?searchtype=author&query=Moody,+R+V) (Edmonton), [Peter A. B. Pleasants](https://arxiv.org/search/math?searchtype=author&query=Pleasants,+P+A+B) (Suva)
	- Submitted on 19 Jun 1999 ([v1](https://arxiv.org/abs/math/9906132v1)), last revised 14 Jan 2000 (this version, v2)

### Visible lattice points and kth power free integers: entropy, symmetries, and topological invariants. Dynamical Systems and Ergodic Theory
[arXiv:2311.18454](https://arxiv.org/abs/2311.18454)
- On k-free numbers in cyclotomic fields: entropy, symmetries and topological invariants
- [Michael Baake](https://arxiv.org/search/math?searchtype=author&query=Baake,+M), [Alvaro Bustos](https://arxiv.org/search/math?searchtype=author&query=Bustos,+A), [Andreas Nickel](https://arxiv.org/search/math?searchtype=author&query=Nickel,+A)
- Submitted 30 Nov 2023

this sounds epic

- [arXiv:1910.13876](https://arxiv.org/abs/1910.13876)
	- Number-theoretic positive entropy shifts with small centraliser and large normaliser
	- [Michael Baake](https://arxiv.org/search/math?searchtype=author&query=Baake,+M), [Alvaro Bustos](https://arxiv.org/search/math?searchtype=author&query=Bustos,+A), [Christian Huck](https://arxiv.org/search/math?searchtype=author&query=Huck,+C), [Mariusz Lemanczyk](https://arxiv.org/search/math?searchtype=author&query=Lemanczyk,+M), [Andreas Nickel](https://arxiv.org/search/math?searchtype=author&query=Nickel,+A)
	- Submitted 30 Oct 2019, last revised 26 Oct 2020

This stuff will be useful when I transition to algebra


### Simultaneous visibility, asymptotic density bounding, Schnirelmann density, Ergodic Theory
- [arXiv:2406.08197](https://arxiv.org/abs/2406.08197) 
	- Simultaneous visibility in the integer lattice
	- [Daniel Berend](https://arxiv.org/search/math?searchtype=author&query=Berend,+D), [Rishi Kumar](https://arxiv.org/search/math?searchtype=author&query=Kumar,+R), [Andrew Pollington](https://arxiv.org/search/math?searchtype=author&query=Pollington,+A)
	- Submitted on 12 Jun 2024
	- 

### Visibility on Generalized Lines of Sight 
-  [arXiv:1710.04554](https://arxiv.org/abs/1710.04554)
	- Lattice point visibility on generalized lines of sight
	- [Edray Herber Goins](https://arxiv.org/search/math?searchtype=author&query=Goins,+E+H), [Pamela E. Harris](https://arxiv.org/search/math?searchtype=author&query=Harris,+P+E), [Bethany Kubik](https://arxiv.org/search/math?searchtype=author&query=Kubik,+B), [Aba Mbirika](https://arxiv.org/search/math?searchtype=author&query=Mbirika,+A)
	- Submitted on 12 Oct 2017


In this paper, we study the Dirichlet series that enumerates proper equivalence classes of full-rank sublattices of a given quadratic lattice in a hyperbolic plane—that is, a nondegenerate isotropic quadratic space of dimension 2. We derive explicit formulas for the associated zeta functions and obtain a combinatorial way to compute them. Their analytic properties lead to the intriguing consequence that a large proportion of proper classes are one-lattice classes.

### Dirichlet series --> proper equivalnce classes of full rank sublattices of a quadratic lattice in hyperbolic plane.
- [arXiv:2505.00484](https://arxiv.org/abs/2505.00484)
	- Zeta functions of quadratic lattices of a hyperbolic plane
	- [Daejun Kim](https://arxiv.org/search/math?searchtype=author&query=Kim,+D), [Seok Hyeong Lee](https://arxiv.org/search/math?searchtype=author&query=Lee,+S+H), [Seungjai Lee](https://arxiv.org/search/math?searchtype=author&query=Lee,+S)
	- Submitted on 1 May 2025

I have no idea what this means but it seems extraordinarily relevant to what I'm talking about!


### Multidimensional Continued Fractions, Tilings, and Roots of Unity on Lattices
- Not on arxiv, saved as pdf on my desktop
	- Multidimensional Continued Fractions, Tilings, and Roots of Unity
	- Therese-Marie Basa Landry
	- August 2015

super interesting stuff about different classes of tilings, cyclic tilings. Doesn't mention visibility, or really any number theory. this is going to be quite useful when I start thinking about these as spaces, do the commutative algebra

She mentions an invariant associated subgroup of a lattice... I wonder if it has anything to do with visibility...

### Density of visible lattice points on random walks
- [arXiv:2009.03609](https://arxiv.org/abs/2009.03609)
	- Random walks on generalized visible lattice points
	- [Kui Liu](https://arxiv.org/search/math?searchtype=author&query=Liu,+K), [Xianchang Meng](https://arxiv.org/search/math?searchtype=author&query=Meng,+X)
	- Submitted on 8 Sep 2020
I honestly dont care about this that much

# 2. Visibility of Unimodular Integral Lattices $\Lambda\subseteq\Z^n$
An m dimensional Unimodular Lattice is a lattice generated by the columns of an nxm matrix whose fundamental parallelotope has m-dimensional volume 1. This is the sqrt of the Gramian $M^\top M$.

## 2.1 Visibility of $\Z^n$ from any point $x\in\Z^n$ 
Introduces the general idea of "visible from any point" rather than just "visible from the origin". It's mentioned sometimes in the literature (simultaneous visibility paper) but not very common.

Anyways, this is just a jumping off point for me to begin the notion of visibility the way I want it. I can define vocabulary.

From any vantage point in space, one can consider the visibility of objects around them in that same space.

Reprove that visibility of $\Z^n$ is $1/\zeta(n)$. Prove that visibility from any other point is also $1/\zeta(n)$

## 2.2 Visibility of $\Z^m\times\{0\}^{n-m}$ from any point $x\in\Z^n$
This is the visibility of affine subspaces
For m=n-1, this is the visibility of a hyperplane (from the origin) after a translation by x. I haven't added in the SLnZ stuff yet, that will come (unimodular!)

I DONT understand the cases m\neq n-1.... but I bet I can figure them outtttt <3


## 2.3 Visibility of $\Z^n$ and $\Z^m\times\Z_{\geq0}^{n-m}$ from any point $x\in\Z^m\times\{0\}^{n-m}$
Dual to 2.2.

This is sort of a dual notion of visibility. Rather than thinking extrinsically, like we're viewing a space that has been embedded into our space, we can think intrinsically. From within an embedded space, what is the visibility of the ambient space? The two cases I gave should have equal density because of symmetry? but I honestly dont know!

Related to the history of visible lattice points with Olber's paradox! <3

## 2.4 Visibility of $\Lambda\subseteq\Z^n$ generated by a matrix $M=UI_{nxm}V$ for $U\in SL_{n} \Z, V\in SL_{m}\Z$ from any point $x\in\Z^n$
A generalization of 2.2.

Here I'm defining $I_{nxm}$ to be the column matrix of the first $m$ elementary unit vectors $e_i$. You can view it as the generating matrix of the lattice $\Z^m\subset\Z^n$

We now move to considering any transformation by unimodular matrices of these unit vectors within their own spanned space as well within the larger ambient space $\Z^n$.

I know that for m=n-1 this transformation has no affect on the density! But I should iron it out a little bit for my paper with Kelly. 

I suspect it's the same for $m\leq n-1$ but I'm not positive...

The idea is that the density of lattices doesn't change as you transform them by $SL_n \Z$, what matters is the point you view them from.

## 2.5 Visibility of $Z^n$ (or any half-space?) from any point $x\in \Lambda\subseteq\Z^n$ generated by a matrix $M=UI_{nxm}V$ for $U\in SL_{n} \Z, V\in SL_{m}\Z$
Dual to 2.4. A generalization of 2.3.


## 2.6 Conclusion :3
Given any nxm unimodular matrix, I can describe the density of points visible from a specified point $x\in\Z^n$ 
hooray!!

This is the same as asking the density on ANY hyperplane or system of linear equations (hyperplane intersections) in any dimension with any equation. woah!

# 3. Visibility of Non-Unimodular Integral Lattices
As in, I'm examining lattices with generating matrices whose Gramian is an integer larger than 1

## 3.1 Visibility of $\prod_{i=1}^n r_{i}\Z$ from any point $x\in\Z^n$
Since I don't know what's going on it might be best for each subcase to first consider visibility from the origin and then combine it with what I've learned about translations. 

### 3.1.1 $r_i\neq0$ 
This is a space that has been scaled in certain directions. It'd be interesting to cover cases like $r_i = p$ prime, $r_i=p_{i}$ distinct primes.

### 3.1.2 $r_i=0$, ie $\Lambda$ is $m-$dimensional with $m\neq n$

## 3.2 Visibility of $\Lambda$ generated by ANY nxm matrix $M$ with linearly independent columns from any point $x\in\Z^n$.
It is naive, but I believe that the Gramian is the only thing that should determine visibility (when x is the origin)... Oh god I just have no clue.

## 3.3 Dual Visibility
visibility within the intrinsic space and of the ambient, extrinsic space.

## 3.4 Conclusion
A full descritpion of visibility of ANY integral lattice!
And under ANY linear transformation
- Shearings, rotations, isometries, reflections, translations, 
Translations = viewed from ANY point.
intrinsic vs extrinsic visibility

# 4 Squarefree --> kth power free Integers

The density of squarefree integers is 1/zeta(2). of kth power free integers is 1/zeta(k). 

- what if I filter for which squares I allow and don't allow? Like how I filtered for which primes are allowed and which aren't!

- Instead of visible (gcd is prime-free), consider kth free factor. Like what about all the points whose gcd is squarefree? thatd be interesting to consider!



# 5. Visibility of Integral Lattices Under Certain Operations
- $\Lambda_1\subset\Lambda_2$
- $\Lambda_{1}\n\Lambda_{2}$
- $\Lambda_1\u\Lambda_2$
- $\Lambda_1\setminus\Lambda_2$
- $\Lambda_1\times\Lambda_2$

How do these operation behave (distribute?) with the familiar linear transformations whose effects on visibility I know how to describe?

# 6. Commutative Algebra and Topology
Spaces modulo out visibility equivalence? 
Cosets $x+\Lambda$ for some lattice subgroup of $\Z^n$?
- In $\Z^{n-1}\times\{0\}$, this is like largest squarefree factor.
	- largest kth power free factor?

Identification with Toroidal spaces. Chinese remainder theorem



# 7. Identification of Integer Lattices or their Dual Lattices with n-dim. tiling symmery group <3

# 8. Visibility of Aperiodic Tilings and other Strange Sets (like the Ammann-Beenker Set)

# 9. Connections to (and construction of!) n-dim Farey Sequence (Array?) and Stern-Brocot Diagram

# 10. Reflection on the many areas of math bridged by this theory

- Number Theory
	- Farey Series
	- Harmonic Analysis
	- Modular Forms
	- Quadratic Forms
	- Diophantine solutions and approximations
	- continued fractions
	- Connections between density formulas and classical number theoretical equations and their higher dimensional generalizations
		- Riemann zeta
		- Dedekind psi
		- Mobius mu
		- divisor sigma
		- Dirichlet convolution
		- Fourier transformation
		- poisson summaton
- Lattice and Tiling Theory
	- Periodic, cyclic, aperiodic, acyclic tilings/symmetries!
	- Voronoi Cells
	- arbitrarily large "Clearings in the Orchard" of any shape
	- Sphere Packings!
- Crystallography!
	- there seems to be real cool stuff going on with these bragg peaks and diffraction and stuff
- Cryptography??
- Linear Algebra, specifically GLnZ, SLnZ, PSLnZ
- Geometric Inspirations!
	- Hyperplanes and Their Intersections
	- Affine Subspaces/Geometry
	- Projective Geometry?
	- Hyperbolic Geometry? Connection with Farey might clear this up
	- Upper Half Spaces
	- Simplicial G
- Algebraic Geometry
	- systems of linear equations. What about nonlinear?
- Commutative Algebra
	- Lattices as finitely generated free abelian groups with a bilinear quadratic form (inner product?)
- Topology
	- Quotient spaces, toroidal spaces

# 11. Visibility Visualizers! Math Blog!
make some math art, some widgets

SageMath go brrr

Make a math blog, maybe I can export this Obsidian vault??

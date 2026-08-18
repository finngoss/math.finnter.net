## Purpose and endpoint

$$
T^*M,\qquad  
\text{symbols},\qquad  
\text{elliptic operators},\qquad  
\text{differential forms},\qquad  
\text{Riemannian metrics}.  
$$

By the end, you should be able to move comfortably between the following descriptions of the same mathematical object:

$$
\text{geometric}  
\longleftrightarrow  
\text{coordinate}  
\longleftrightarrow  
\text{analytic}.  
$$

In particular, you should be able to understand why elliptic operators naturally produce functions on (T^*M), why the Laplacian depends on a Riemannian metric, and why cotangent geometry is the natural setting for symbols and frequencies.

---

# Part I. Smooth Manifolds

## 1. Review of Euclidean differential calculus

### 1.1 Functions and derivatives

Review:

- (C^k) and (C^\infty) functions
    
- partial derivatives
    
- directional derivatives
    
- Jacobian matrices
    
- chain rule
    
- inverse function theorem
    
- implicit function theorem
    

### 1.2 Directional derivatives

For (f:\mathbb R^n\to\mathbb R),

# [  
D_vf(x)

\sum_i v^i\frac{\partial f}{\partial x^i}.  
]

Understand the distinction between:

[  
Df_x,\qquad  
\nabla f(x),\qquad  
D_vf(x).  
]

A central fact:

[  
Df_x(v)=D_vf(x).  
]

### 1.3 Why this matters

You want to recognize later that (df_x) is not initially a vector. It is a **linear functional on tangent vectors**.

---

# Part II. Smooth Manifolds

## 2. Definitions and examples

### 2.1 Topological manifolds

Know:

- Hausdorff
    
- second countable
    
- locally Euclidean
    
- dimension
    

### 2.2 Charts

A chart is

[  
\varphi:U\subset M\to\mathbb R^n.  
]

Understand:

- coordinate neighborhoods
    
- coordinate maps
    
- coordinate representations
    

### 2.3 Atlases

Know what an atlas is and why transition maps matter.

For overlapping charts,

[  
\varphi_\beta\circ\varphi_\alpha^{-1}  
]

must be smooth.

### 2.4 Smooth manifolds

Understand the definition of a smooth structure.

You should know the standard examples:

- (\mathbb R^n)
    
- (S^n)
    
- tori
    
- open subsets of (\mathbb R^n)
    
- embedded submanifolds
    
- projective spaces
    

---

## 3. Smooth maps

### 3.1 Smoothness

Understand smooth maps

[  
F:M\to N.  
]

### 3.2 Diffeomorphisms

Know:

[  
F:M\to N  
]

is a diffeomorphism if it is smooth, bijective, and (F^{-1}) is smooth.

### 3.3 Immersions and submersions

Know the definitions:

- immersion: differential injective
    
- submersion: differential surjective
    
- embedding
    

These will become useful when thinking about submanifolds and tangent spaces.

---

# Part III. Tangent Spaces

## 4. Tangent vectors

This is a major checkpoint.

Learn at least two equivalent viewpoints.

### 4.1 Tangent vectors as velocities of curves

For a curve

[  
\gamma:(-\epsilon,\epsilon)\to M,  
\qquad  
\gamma(0)=x,  
]

its velocity at (0) is a tangent vector

[  
\dot\gamma(0)\in T_xM.  
]

### 4.2 Tangent vectors as derivations

A tangent vector (v\in T_xM) may be viewed as a derivation

[  
v:C^\infty(M)\to\mathbb R  
]

satisfying

[  
v(fg)=v(f)g(x)+f(x)v(g).  
]

This viewpoint is particularly useful later for differential forms.

---

## 5. Coordinate bases

Given coordinates

[  
(x^1,\ldots,x^n),  
]

understand

[  
\frac{\partial}{\partial x^1},  
\ldots,  
\frac{\partial}{\partial x^n}  
]

as a basis of (T_xM).

Every vector can be written

[  
v=v^i\frac{\partial}{\partial x^i}.  
]

Learn Einstein summation notation.

### 5.1 Coordinate transformation

Understand how tangent vectors transform under a coordinate change.

This is your first serious exposure to the difference between:

- coordinates
    
- vectors
    
- components of vectors
    

---

# Part IV. Cotangent Spaces

## 6. Dual vector spaces

Review linear algebra:

For a vector space (V),

[  
V^*=\operatorname{Hom}(V,\mathbb R).  
]

An element

[  
\xi\in V^*  
]

eats a vector

[  
v\in V  
]

and returns a scalar

[  
\xi(v).  
]

---

## 7. Cotangent spaces

Define

[  
T_x^_M=(T_xM)^_.  
]

Understand the distinction:

[  
v\in T_xM  
]

versus

[  
\xi\in T_x^*M.  
]

### 7.1 Coordinate basis

The dual basis is

[  
dx^1,\ldots,dx^n.  
]

Understand

# [  
dx^i  
\left(  
\frac{\partial}{\partial x^j}  
\right)

\delta^i_j.  
]

Every covector has the form

[  
\xi=\xi_i,dx^i.  
]

---

## 8. The differential of a function

For

[  
f:M\to\mathbb R,  
]

understand

[  
df_x\in T_x^*M.  
]

The defining relation is

[  
df_x(v)=v(f).  
]

In coordinates,

# [  
df

\frac{\partial f}{\partial x^i}dx^i.  
]

This should become completely automatic.

### Important conceptual checkpoint

Know why:

[  
df\text{ is a covector}  
]

rather than a vector.

---

# Part V. Differential Forms

## 9. Exterior powers

Review the construction

[  
\Lambda^kV^*.  
]

Understand alternating multilinear maps.

A (k)-form is an element of

[  
\Lambda^kT_x^*M  
]

at each point.

Globally,

# [  
\Omega^k(M)

\Gamma(\Lambda^kT^*M).  
]

---

## 10. The wedge product

Learn:

[  
\alpha\wedge\beta.  
]

For

[  
\alpha\in\Omega^p(M),  
\qquad  
\beta\in\Omega^q(M),  
]

understand

# [  
\alpha\wedge\beta

(-1)^{pq}\beta\wedge\alpha.  
]

Know examples such as

[  
dx^1\wedge dx^2.  
]

Understand why

[  
dx^i\wedge dx^i=0.  
]

---

## 11. Differential forms in coordinates

Know that

# [  
\omega

\sum_{i_1<\cdots<i_k}  
\omega_{i_1\cdots i_k}  
dx^{i_1}\wedge\cdots\wedge dx^{i_k}.  
]

Be comfortable manipulating:

- 0-forms = functions
    
- 1-forms
    
- 2-forms
    
- top-degree (n)-forms
    

---

# Part VI. Exterior Derivative

## 12. Definition and properties

Learn

[  
d:\Omega^k(M)\to\Omega^{k+1}(M).  
]

For a function,

# [  
df

\partial_i f,dx^i.  
]

Understand:

[  
d^2=0.  
]

Also:

# [  
d(\alpha\wedge\beta)

d\alpha\wedge\beta  
+  
(-1)^p\alpha\wedge d\beta.  
]

for (\alpha\in\Omega^p(M)).

---

## 13. Closed and exact forms

Know:

[  
d\omega=0  
\quad\Rightarrow\quad  
\omega\text{ is closed},  
]

and

[  
\omega=d\eta  
\quad\Rightarrow\quad  
\omega\text{ is exact}.  
]

Every exact form is closed.

Understand why this produces cohomology.

---

# Part VII. Integration and Stokes

## 14. Integration of forms

Understand why differential forms, rather than arbitrary tensors, are naturally integrated.

Learn:

[  
\int_M\omega  
]

for top-degree forms.

Know the role of orientation.

---

## 15. Orientation

Understand:

- oriented bases
    
- orientation of manifolds
    
- induced orientation on boundaries
    

Know examples such as:

[  
S^1,\quad S^2,\quad \partial M.  
]

---

## 16. Stokes' theorem

Know:

# [  
\boxed{  
\int_M d\omega

\int_{\partial M}\omega.  
}  
]

Understand how this contains:

- fundamental theorem of calculus
    
- Green's theorem
    
- divergence theorem
    
- classical Stokes' theorem
    

as special cases.

---

# Part VIII. Vector Fields and Tensors

## 17. Vector fields

Understand

[  
X\in\Gamma(TM).  
]

In coordinates,

[  
X=X^i\partial_i.  
]

Know how vector fields act on functions.

---

## 18. Lie brackets

Learn

[  
[X,Y]=XY-YX.  
]

Understand:

- why vector fields form a Lie algebra
    
- coordinate expression
    
- geometric meaning via flows
    

You do not need a deep Lie-theory treatment yet.

---

## 19. Tensor fields

Review tensor products:

[  
T^r_sM.  
]

Be able to distinguish:

- vectors
    
- covectors
    
- ((0,2))-tensors
    
- general tensor fields
    

This is prerequisite language for the metric.

---

# Part IX. Riemannian Metrics

## 20. Definition

A Riemannian metric is a smoothly varying positive-definite inner product

[  
g_x:T_xM\times T_xM\to\mathbb R.  
]

Know every part of this definition:

- bilinear
    
- symmetric
    
- positive definite
    
- smooth in (x)
    

---

## 21. Metric in coordinates

Understand

[  
g=g_{ij}(x),dx^i\otimes dx^j.  
]

If

[  
v=v^i\partial_i,  
\qquad  
w=w^j\partial_j,  
]

then

# [  
g(v,w)

g_{ij}v^iw^j.  
]

Know the matrix form

[  
g(v,w)=v^TGw.  
]

---

## 22. Length, angle, orthogonality

Know:

[  
|v|_g=\sqrt{g(v,v)}.  
]

Orthogonality:

[  
g(v,w)=0.  
]

Angle:

# [  
\cos\theta

\frac{g(v,w)}  
{|v|_g|w|_g}.  
]

---

## 23. Musical isomorphisms

Learn thoroughly:

[  
\flat:T_xM\to T_x^*M  
]

and

[  
\sharp:T_x^*M\to T_xM.  
]

For a vector:

[  
v^\flat(w)=g(v,w).  
]

For a covector:

[  
g(\xi^\sharp,w)=\xi(w).  
]

Understand in coordinates:

[  
v^\flat=g_{ij}v^i,dx^j,  
]

and

[  
\xi^\sharp=g^{ij}\xi_i\partial_j.  
]

This topic is essential.

---

# Part X. Riemannian Geometry of Curves

## 24. Length of curves

For

[  
\gamma:[a,b]\to M,  
]

learn

# [  
L(\gamma)

\int_a^b  
|\dot\gamma(t)|_g,dt.  
]

---

## 25. Riemannian distance

Understand

# [  
d(p,q)

\inf_\gamma L(\gamma),  
]

where the infimum runs over curves joining (p) to (q).

---

## 26. Geodesics

Learn the basic idea:

> Geodesics are curves whose velocity is parallel transported along itself.

You do not need advanced geodesic theory initially.

Know:

[  
\nabla_{\dot\gamma}\dot\gamma=0.  
]

Know the local coordinate equation:

# [  
\ddot x^k  
+  
\Gamma^k_{ij}\dot x^i\dot x^j

]

---

# Part XI. Connections

## 27. Why ordinary differentiation fails on manifolds

A vector field at (x) and a vector field at a nearby point live in different tangent spaces:

[  
T_xM  
\neq  
T_yM.  
]

So you cannot naively subtract them.

A connection gives a notion of differentiating vector fields.

---

## 28. Levi-Civita connection

Know that every Riemannian metric determines a unique connection satisfying:

### Torsion-free

[  
\nabla_XY-\nabla_YX=[X,Y].  
]

### Metric-compatible

# [  
X(g(Y,Z))

g(\nabla_XY,Z)+g(Y,\nabla_XZ).  
]

This is the **Levi-Civita connection**.

---

## 29. Christoffel symbols

Know

# [  
\nabla_{\partial_i}\partial_j

\Gamma^k_{ij}\partial_k.  
]

Know the formula

# [  
\Gamma^k_{ij}

## \frac12g^{k\ell}  
\left(  
\partial_i g_{j\ell}  
+  
\partial_j g_{i\ell}

\partial_\ell g_{ij}  
\right).  
]

You should understand what these coefficients mean, even if you don't memorize them immediately.

---

# Part XII. Differential Forms + Metric

## 30. Hodge star

This is one of the most important things to learn before an analysis course involving elliptic operators.

A Riemannian metric and orientation define

[  
\boxed{  
*: \Omega^k(M)\to\Omega^{n-k}(M).  
}  
]

Understand the defining identity

# [  
\alpha\wedge *\beta

\langle\alpha,\beta\rangle,dV_g.  
]

---

## 31. Volume form

Know the Riemannian volume form:

# [  
dV_g

\sqrt{\det(g_{ij})}  
,dx^1\wedge\cdots\wedge dx^n.  
]

This is how the metric produces integration measure.

---

## 32. Codifferential

Learn the adjoint-like operator

[  
d^*.  
]

Understand schematically that (d^*) is the formal adjoint of (d) with respect to the Riemannian (L^2) inner product.

Know the relationship with the Hodge star, up to convention-dependent signs.

---

# Part XIII. Hodge Theory

## 33. Hodge Laplacian

Learn

# [  
\boxed{  
\Delta

dd^*+d^*d.  
}  
]

This acts on differential forms.

For functions, it reduces to the Laplace–Beltrami operator, up to sign convention.

---

## 34. Harmonic forms

A form (\omega) is harmonic if

[  
\Delta\omega=0.  
]

Understand the basic relation

[  
\text{harmonic forms}  
\leftrightarrow  
\text{de Rham cohomology}  
]

on compact oriented Riemannian manifolds.

You do not need a complete proof of Hodge decomposition before 538, but you should know what it says.

---

# Part XIV. Differential Operators on Manifolds

## 35. Differential operators

Understand the local form

# [  
P

\sum_{|\alpha|\le m}  
a_\alpha(x)\partial^\alpha.  
]

Know:

- order
    
- principal part
    
- lower-order terms
    

---

## 36. Operators on vector bundles

Generalize from functions to sections:

[  
P:\Gamma(E)\to\Gamma(F).  
]

Examples:

[  
d,  
\qquad  
d+d^_,  
\qquad  
\Delta,  
\qquad  
\nabla^_\nabla.  
]

Understand why vector bundles naturally appear.

---

# Part XV. Symbols

## 37. Principal symbol

For

[  
P=  
\sum_{|\alpha|\le m}  
a_\alpha(x)\partial^\alpha,  
]

learn

# [  
\sigma_m(P)(x,\xi)

\sum_{|\alpha|=m}  
a_\alpha(x)(i\xi)^\alpha.  
]

Understand the heuristic:

[  
\partial_j  
\longleftrightarrow  
i\xi_j.  
]

---

## 38. Why the symbol lives on (T^*M)

Understand:

[  
(x,\xi)\in T^*M.  
]

Interpret:

- (x): spatial location
    
- (\xi): cotangent/frequency variable
    

Understand plane waves:

[  
e^{i\langle x,\xi\rangle}.  
]

And phase functions:

[  
e^{i\phi(x)},  
\qquad  
\xi=d\phi.  
]

---

## 39. Ellipticity

For scalar (P):

[  
\boxed{  
P\text{ elliptic}  
\iff  
\sigma_m(P)(x,\xi)\neq0  
\quad  
(\xi\neq0).  
}  
]

For bundle-valued operators:

[  
\sigma_m(P)(x,\xi):E_x\to F_x  
]

must be invertible.

Work through:

- Laplacian
    
- Hodge Laplacian
    
- Dirac-type operators, at least conceptually
    

---

# Part XVI. The Analytic Consequences of Ellipticity

## 40. Elliptic regularity

Understand the principle:

[  
Pu=f  
]

and (f) smooth implies (u) smooth, modulo the appropriate hypotheses.

More generally, learn the Sobolev-scale principle

[  
Pu\in H^s  
\quad\Rightarrow\quad  
u\in H^{s+m}  
]

locally, schematically.

---

## 41. Parametrices

This is a major bridge into pseudodifferential theory.

Understand the statement:

If (P) is elliptic, one can construct (Q) such that

[  
QP=I-R_1,  
\qquad  
PQ=I-R_2,  
]

where the remainders are smoothing.

Do not worry about constructing (Q) in full detail yet.

Understand why this is philosophically an approximate inverse.

---

## 42. Fredholmness

Understand why an elliptic operator on a compact manifold behaves like a finite-dimensional linear map.

Know the meaning of:

[  
\dim\ker P<\infty,  
]

and

[  
\dim\operatorname{coker}P<\infty.  
]

Understand:

[  
\text{ellipticity}  
\Rightarrow  
\text{Fredholm-type behavior}.  
]

---

# Part XVII. Spectral Theory Preparation

## 43. Hilbert spaces

Review:

- inner products
    
- completeness
    
- bounded operators
    
- adjoints
    
- orthogonal complements
    
- compact operators
    

---

## 44. Self-adjoint operators

Understand

[  
A=A^*.  
]

Know the distinction between:

- symmetric
    
- self-adjoint
    
- essentially self-adjoint
    

At minimum, understand why self-adjointness gives good spectral behavior.

---

## 45. Compact resolvent

Understand the idea that for an elliptic operator on a compact manifold,

[  
(P-z)^{-1}  
]

is often compact for (z) away from the spectrum.

This leads to discrete spectral structure.

---

# Part XVIII. Heat Operators

## 46. Semigroups

Since you already have some background, connect it explicitly to elliptic operators.

Study:

[  
e^{-tP}.  
]

Understand the relation to the abstract semigroup equation

[  
\frac{d}{dt}u+Pu=0.  
]

---

## 47. Heat kernel

Understand the integral kernel

[  
K_t(x,y)  
]

satisfying

# [  
(e^{-tP}f)(x)

\int_M K_t(x,y)f(y),dV_g(y).  
]

Know that:

# [  
\operatorname{Tr}(e^{-tP})

\int_M\operatorname{tr}K_t(x,x),dV_g.  
]

---

## 48. Heat kernel asymptotics

Understand the conceptual expansion

[  
\operatorname{Tr}(e^{-tP})  
\sim  
\sum_k a_k t^{(k-n)/m}.  
]

Know that the coefficients (a_k) contain geometric information.

This is an important route to spectral invariants.

---

# Part XIX. Spectral Zeta Functions

## 49. Definition

For a positive elliptic operator,

# [  
\zeta_P(s)

\sum_{\lambda_j>0}\lambda_j^{-s}.  
]

Understand:

- initial domain of convergence
    
- analytic continuation
    
- poles
    
- evaluation at (s=0)
    

---

## 50. Mellin transform connection

Understand

# [  
\zeta_P(s)

\frac{1}{\Gamma(s)}  
\int_0^\infty  
t^{s-1}  
\operatorname{Tr}(e^{-tP}),dt.  
]

This is a fundamental bridge:

[  
\boxed{  
\text{heat asymptotics}  
\leftrightarrow  
\text{zeta function poles}.  
}  
]

---

# Part XX. Regularized Determinants

## 51. Finite-dimensional motivation

For eigenvalues (\lambda_j),

[  
\det P=\prod_j\lambda_j.  
]

For infinitely many eigenvalues, this diverges.

---

## 52. Zeta determinant

Learn

# [  
\boxed{  
\det_\zeta P

e^{-\zeta_P'(0)}.  
}  
]

Understand:

- why regularization is necessary
    
- how analytic continuation makes the definition possible
    
- why this generalizes the ordinary determinant
    

---

# Part XXI. Pseudodifferential Operators Preview

## 53. Fourier definition

Understand operators of the form

# [  
Au(x)

\frac{1}{(2\pi)^n}  
\int  
e^{i\langle x,\xi\rangle}  
a(x,\xi)\hat u(\xi),d\xi.  
]

The function

[  
a(x,\xi)  
]

is the symbol.

---

## 54. Symbol classes

Learn the rough idea of

[  
S^m.  
]

Understand:

[  
|\partial_x^\alpha\partial_\xi^\beta a(x,\xi)|  
\lesssim  
(1+|\xi|)^{m-|\beta|}.  
]

You do not need to master the technical Fréchet-space structure yet.

---

## 55. Differential versus pseudodifferential operators

Understand:

# [  
\text{differential symbol}

\text{polynomial in }\xi,  
]

whereas a pseudodifferential symbol can have general asymptotic behavior.

---

## 56. Composition

Understand conceptually that

[  
AB  
]

corresponds to an asymptotic symbol product

[  
a# b,  
]

not simply (ab).

Know that derivatives in (x) and (\xi) appear.

This is the beginning of the noncommutative structure.

---

# Part XXII. Non-Commutative Residue Preview

## 57. Classical symbols

Know the asymptotic expansion

[  
a(x,\xi)  
\sim  
a_m+a_{m-1}+a_{m-2}+\cdots.  
]

Each (a_j) is homogeneous of degree (j) in (\xi).

---

## 58. Wodzicki residue

For an (n)-dimensional manifold, understand that the residue extracts the order

[  
-n  
]

component:

[  
\operatorname{Res}(A)  
\sim  
\int_M  
\int_{|\xi|=1}  
\operatorname{tr}a_{-n}(x,\xi)  
,dS(\xi),dx.  
]

The essential idea:

[  
\boxed{  
\text{one particular homogeneous term in the symbol}  
\longrightarrow  
\text{global spectral invariant}.  
}  
]

---

# Part XXIII. The Master Connections

At the end of your self-study, you should be able to explain these chains.

## Geometry

[  
M  
\rightarrow  
TM  
\rightarrow  
T^*M  
\rightarrow  
\text{metric}.  
]

## Differential calculus

[  
f  
\rightarrow  
df  
\rightarrow  
\nabla f.  
]

## Riemannian analysis

[  
g  
\rightarrow  
dV_g,\nabla,\operatorname{div},\Delta.  
]

## Fourier/symbolic analysis

[  
e^{i\phi}  
\rightarrow  
d\phi  
\rightarrow  
(x,\xi)\in T^*M  
\rightarrow  
\sigma(P)(x,\xi).  
]

## Elliptic theory

[  
\sigma_m(P)\text{ invertible}  
\rightarrow  
\text{parametrix}  
\rightarrow  
\text{elliptic regularity}  
\rightarrow  
\text{Fredholmness}.  
]

## Spectral theory

[  
P  
\rightarrow  
(P-z)^{-1}  
\rightarrow  
e^{-tP}  
\rightarrow  
\zeta_P(s)  
\rightarrow  
\det_\zeta P.  
]

## Pseudodifferential theory

[  
P  
\rightarrow  
P^{-1}  
\rightarrow  
\text{pseudodifferential calculus}  
\rightarrow  
\operatorname{Res}(A).  
]

---

# Part XXIV. Suggested Course Structure for Your Notes

Organize your notes into the following modules.

## Module 1 — Smooth manifolds

- Manifolds
    
- Charts
    
- Smooth maps
    
- Submanifolds
    
- Tangent spaces
    
- Tangent vectors
    

## Module 2 — Cotangent geometry

- Dual spaces
    
- Cotangent spaces
    
- Covectors
    
- Differential of a function
    
- Cotangent bundle
    
- Pullbacks
    

## Module 3 — Differential forms

- Exterior powers
    
- Wedge product
    
- Differential forms
    
- Exterior derivative
    
- Closed/exact forms
    
- Integration
    
- Orientation
    
- Stokes
    

## Module 4 — Vector fields and tensors

- Vector fields
    
- Flows
    
- Lie brackets
    
- Tensor fields
    
- Contraction
    
- Lie derivative
    

## Module 5 — Riemannian geometry

- Metrics
    
- Metric components
    
- Length and angle
    
- Musical isomorphisms
    
- Gradient
    
- Volume form
    
- Distance
    
- Geodesics
    

## Module 6 — Connections

- Covariant derivatives
    
- Levi-Civita connection
    
- Christoffel symbols
    
- Parallel transport
    
- Curvature
    

## Module 7 — Differential forms + Riemannian geometry

- Hodge star
    
- Codifferential
    
- (L^2) inner product on forms
    
- Hodge Laplacian
    
- Harmonic forms
    
- Hodge decomposition
    

## Module 8 — Differential operators

- Differential operators
    
- Vector bundle-valued operators
    
- Formal adjoints
    
- Ellipticity
    
- Principal symbols
    
- Examples
    

## Module 9 — Analysis of elliptic operators

- Sobolev spaces
    
- Elliptic estimates
    
- Elliptic regularity
    
- Parametrices
    
- Fredholm operators
    
- Compact resolvent
    
- Spectral theorem
    

## Module 10 — Spectral machinery

- Resolvents
    
- Semigroups
    
- Heat operators
    
- Heat kernels
    
- Heat trace asymptotics
    
- Spectral zeta functions
    
- Mellin transforms
    

## Module 11 — Pseudodifferential operators

- Symbol classes
    
- Quantization
    
- Composition
    
- Adjoints
    
- Ellipticity
    
- Parametrix construction
    

## Module 12 — Course-specific material

- Classical pseudodifferential operators
    
- Non-commutative residue
    
- Wodzicki residue
    
- Canonical traces
    
- Complex powers
    
- Zeta functions
    
- Zeta determinants
    
- Determinant identities/anomalies
    
- Geometric applications
    

---

# Part XXV. Minimum Competency Checklist

Before the semester starts, aim to be able to answer the following without looking anything up.

### Manifolds

-  What is a smooth manifold?
    
-  What is a chart?
    
-  What is (T_xM)?
    
-  What is a tangent vector?
    
-  What is a vector field?
    

### Cotangent geometry

-  What is (T_x^*M)?
    
-  What is a covector?
    
-  Why is (df_x) a covector?
    
-  What is (T^*M)?
    
-  What does ((x,\xi)\in T^*M) mean?
    

### Differential forms

-  What is a (k)-form?
    
-  What is (\wedge)?
    
-  What is (d)?
    
-  Why does (d^2=0)?
    
-  What does Stokes' theorem say?
    

### Riemannian geometry

-  What is a Riemannian metric?
    
-  How is (g) represented in coordinates?
    
-  How does (g) measure length?
    
-  What are (v^\flat) and (\xi^\sharp)?
    
-  What is (\nabla f)?
    
-  What is the volume form?
    
-  What is the Hodge star?
    

### Analysis

-  What is the Laplace–Beltrami operator?
    
-  What is the Hodge Laplacian?
    
-  What is an adjoint?
    
-  What is a self-adjoint operator?
    
-  What is a resolvent?
    

### Elliptic theory

-  What is a differential operator of order (m)?
    
-  What is its principal symbol?
    
-  Why is the symbol a function on (T^*M)?
    
-  What does elliptic mean?
    
-  What is a parametrix?
    
-  What is elliptic regularity?
    

### MATH 538 preview

-  What is a pseudodifferential operator?
    
-  What is a classical symbol?
    
-  What is the Wodzicki residue?
    
-  What is a spectral zeta function?
    
-  What is a zeta-regularized determinant?
    
-  How does the heat kernel connect to the zeta function?
    

---

# Part XXVI. The Most Important Conceptual Checkpoints

There are five places where I would stop and make sure the material has genuinely clicked.

### Checkpoint 1

[  
\boxed{  
T_xM\neq T_x^*M  
}  
]

but a Riemannian metric gives an isomorphism between them.

### Checkpoint 2

[  
\boxed{  
df_x\in T_x^*M  
}  
]

and

[  
\boxed{  
\nabla f=(df)^\sharp.  
}  
]

### Checkpoint 3

For a phase

[  
u=e^{i\phi},  
]

the frequency covector is

[  
\boxed{  
d\phi.  
}  
]

### Checkpoint 4

A differential operator has a principal symbol

[  
\boxed{  
\sigma_m(P)(x,\xi),  
}  
]

so ellipticity is fundamentally a statement on

[  
\boxed{  
T^*M\setminus0.  
}  
]

### Checkpoint 5

The course's major analytic constructions fit together:

[  
\boxed{  
P  
\rightarrow  
\text{symbol}  
\rightarrow  
\text{ellipticity}  
\rightarrow  
\text{pseudodifferential inverse}  
\rightarrow  
\text{spectral asymptotics}  
\rightarrow  
\text{residue/zeta determinant}.  
}  
]

---

# Final target

You do **not** need to arrive at MATH 538 knowing the Wodzicki residue.

You want to arrive knowing what all the nouns in the following sentence mean:

> "Let (P) be an elliptic differential operator acting on sections of a vector bundle over a closed Riemannian manifold. Its principal symbol is an invertible bundle map over (T^*M\setminus0), which permits the construction of a pseudodifferential parametrix and leads to spectral and heat-kernel asymptotics, from which one obtains zeta functions, non-commutative residues, and regularized determinants."

If that sentence feels structurally transparent rather than intimidating, you are ready for the course.
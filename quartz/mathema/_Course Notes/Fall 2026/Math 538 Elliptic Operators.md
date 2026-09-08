Instructor: Lennie Friedlander


assessment: 30minute presentation at the end of the semester.


- Month 1: pseudodifferential operators
	- shubin chapter 1

 for the very ambitious volume 1 Hörmander PDEs. equidistribution
friedlander and josche: theory of distributions

Prerequisites:
- distribution theory
- functional analysis
- unbounded operators
- operators of trace class
	- barry simon text

# Tuesday August 25
## Distributions
History:
- arose from PDEs.

eg $u(x,t)$ satisfying $$\frac{\partial u}{\partial t}=c\frac{\partial u}{\partial x}$$
with $u(0,t)=f(x)$. Then $u(x,t)=f(x-ct)$

Note: the function must be differentiable, but the solution $f$ need not be. Can take initial data to be something like step function.

So the question is: how to make solution make sense?

100 years ago: notion of weak solution (Hedemard).
Multiply both sides by a very nice function, $\phi\in C^\infty_0(\R^2)$. (infinitely differentiable functions with compact support).

	$$\int_{\R^2}\frac{\partial u}{\partial t}\phi(x,t)-c\frac{\partial u}{\partial x}\phi(x,t) \,dxdt=-\int u\frac{\partial\phi}{\d t}-cu\frac{\d\phi}{\d x}\,dxdt$$
In PDEs: we do integration by parts and  cauchy-schwarz.

We say $u$ is a weak solution to this equation if this integral is $0$ for all such $\phi$. Thus we do not require differentiability.

Hedemar used notion of weak solution for his study of hyperbolic equations...

30-25 years later, Laurent Schwartz (married to Hedemar's granddaughter) came along and formalized in the vocabulary of test functions.

$\phi$ is an example of a test function.

## Test Functions
choice for this class: test functions $\mathcal D(\R^n)=C^\infty_0(\R^n)$.

another choice is Schwartz space, functions that decay at infinity faster than any polynomial, and whose derivatives do the same. eg. gaussian is sufficiently nice to take integrals.

We describe convergence. What does it mean for $\phi_n(x)\to\phi(x)\in\mathcal D(\R^n)$?
1. $\exists R$ such that $\phi_n(x),\phi(x)=0$ if $|x|>R$.
2. All partial derivatives of $\phi_n$ converge uniformly to the partial derivatives of $\phi$.
		$\d^\alpha \phi_n(x)\rightrightarrows\d^\alpha\phi(x)$
		$\alpha=(\alpha_1,...,\alpha_n), \alpha_i\in\Z_+$ is the multi-index. We say $|\alpha|=\sum\alpha_i$.

ex: $\phi_n(x)=\frac{1}{n}\psi(x)$ converges to $0$.

ex: $\phi_n(x)=2^{-n}\psi(\frac{x}{n})$ does not converge because the support keeps growing!

**exercise: $\mathcal D(\R^n)$ is not a metric space **
- that is it cannot be endowed with a metric that induces this definition convergence
- hint: the restriction of the supports is what does it!


def: a *distribution* is a continous linear functional on $\mathcal D(\R^n)$. 
that is, $\<u,\phi\>$ is linear in $\phi$ and if $\phi_n\rightarrow \phi$ then $\<u,\phi_n\>\to\<u,\phi\>$. 

Ex: 
1. suppose $u\in L^1_{loc}(\R^n)$
	1. loc=you can take integral of abs value over any compact set.

then $u\in\mathcal D'(\R^n)$ (dual space. functional uses stars, here we use prime).
$$\<u,\phi\>=\int u(x)\phi(x) dx$$
Since all $\phi_n$ are supported on the same ball, local integrability suffices.

2. $\<\delta_{x_0},\phi\>=\phi(x_0)$. 


3. $S$ sphere of radius 1. Distirbution $\<\delta_S,\phi\>=\int_S \phi(x) dS$. can replace sphere with whatever shape you want!


Can always differentiate distributions! But what does that mean?

### Derivative of Distributions
$\int\d^\alpha u(x)\phi(x)\,dx=(-1)^{|\alpha|}\int u(x)(\d^\alpha \phi(x) \, dx$
(no boundary terms because $\phi$ is compactly supported)

1.  we take $\<\partial^\alpha u,\phi\>=(-1)^{|\alpha|}\<u,\d^\alpha\phi\>$.

2. suppose $a(x)\in C^\infty(\R^n)$. $\<a(x) u,\phi\>=\<u,a(x)\phi\>$. This is definition of multiplying by distribution by a function.

So now we can apply any differentiable operator to the distribution!

## Differentiable Operator
$P(x,D)=\sum_{|\alpha|\leq n} a_\alpha(x)\partial^{\alpha}$

ex: $\<\left(\frac{\d}{\d t}-c\frac{\d}{\d x}\right) f(x-ct),\phi\>=-\int f(x-ct)(\frac{\d \phi}{\d t}-c\frac{\d\phi}{\d x})\,dxdt$

ex: $n=1$. for some $\l\in\C$, the distribution $\<x_+^\lambda,\phi\>=\int_{0}^\infty x^\l\phi(x)\,dx$. Recall $|x^\l|=x^{\Re\l}$. Converges for $\Re \lambda >-1$. 

for fixed $\phi$ it is a holomorphic function of $\l$.

Suppose $\l$ is nice. integrate by parts we get $\<x^\l_+,\phi\>=-\int_0^\infty\frac{x^{\l+1}}{\l+1}\phi'(x)dx$. Now we have convergence for $\Re\l>-2$ except $\l=-1$ where it has a simple pole.

Now we can keep integrating by parts and obtain $(-1)^k\int_0^\infty\frac{x^{\lambda+k+1}}{(\lambda+1)...(\lambda+k)}\phi^{(k)}(x)dx$

Whats gonna be the residue?
$\<(\Res x^\l_+)_{\l=-1},\phi\>=-\int_0^\infty \phi'(x) dx=\phi(0)$.

**Exericse: $|x|^\l\in\R^n$**. convenient to use spherical coordinates because function is spherically symmetric.

In one dimension: $P(x)^\l$ for some polynomial not that difficult. but in higher dimensional case its harder.

Demodules theory?


$
### what is support of a disitirbution?
$u$ is 0 in a neighborhood of $x_0$. There exists a neighborhood of $\Omega$ of $x_0$ such that $\<u,\phi\>=0 \ \forall \phi$ such t tat $\supp\phi\subset\Omega$. 

**we formalize all properties/definitinons of distributions in terms of integrals!**

$\supp u\subset\{|x|\leq R\}$ and a smooth cutoff function $\psi$ supported on ball of radius $R$ on 0 outside it.

so we take $\<u,\phi\>=\<u,\phi\psi\>.$ choice does not depend on cutoff.

need cutoff function because a distribution $u$ can only be appleid to compactly supported function. so if you want to use any smooth $\phi$ you need a cutoff that cuts off just outisde of the support of $u$.


# Thursday August 27
## More distirbution theory and fourier analysis!
Fourier Transform for some $f\in L^1, x,\xi$ n-dimensional.
$$\hat f(\xi)=\int f(x) e^{ix\cdot\xi}\,dx$$
Decay and smoothness correlated.


differentiating as many times as you want <==> rapid decay (sort of)
- magic tool called integration by parts
- investigating how fourier transform decays

eg. 

$$(-\Delta)^N e^{-ix\cdot\xi}=|\xi|^{2N}e^{-ix\cdot\xi}$$

$$e^{-ix\cdot\xi}=|\xi|^{-2N}(-\Delta_x)^N e^{-i x\cdot\xi}$$

$$\hat f(\xi)=\int f(x) e^{-ix\cdot\xi}\,dx=|\xi|^{-2N}\int(-\Delta)^N f(x)e^{-ix\cdot\xi}\,dx$$

If $f$ is smooth, you get rapid decay!!

Inverse Fourier transform
$f(x)=(2\pi)^{-n}\int \hat f(x) e^{ix\cdot\xi}\,d\xi$
goes in opposite direction but with same properties.


So smoothnesss and decay are translated to each other through fourier transform.

Distribution with compact support. $u\in\D'(\R^n)$.

$C^\infty (\R^n)$. Equipped with topology $\mathcal E(\R^n)$.
Convergence in this topology $\phi_n\to \phi$ means that for all compact sets (closed balls) all derivatives $\d^\a\phi_n\rightrightarrows\d^\a\phi$.  

For $\phi\in C^\infty(\R^n)$ we can take cutoff function $\psi=\begin{cases}1, &|x|\leq 1\\ 0, &|x|\geq 2\end{cases}$ so that $\phi_n(x)=\phi(x)\psi(\frac{x}{n})$. 

Fact: This space $\mathcal E$ is a metric space and a little looser than $\D$. like you dont need $\phi_n$ to all have the same support. 

**Exercise: proof? whats the metric?**

Suppose you have a distribution $u$ with $\supp u\subset\{x:|x|\leq R\}$. 

For any smooth $\phi$, we can apply a cutoff $\psi=\begin{cases}1, &|x|\leq R\\ 0, &|x|\geq 2R\end{cases}$ and now consider $\<u,\phi\psi\>:=\<u,\phi\>$

But what if you take a different $\psi?$ Well, take the difference, and see that $u$ is not supported on the support of the difference! Therefore choice of cut off doesn't matter.


$\mathcal E'(\R^n)$ is space of distirbutions with compact support.

if you take a continous linear function on $\E$, it is a continous linear function on $D$. If a sequence converges in $D$ it converges in $E$. Because $\D$ is embedded into $\E$. Convergence in $\D$ is stricter because it requires they have the same support.


So, given a distribution with compact support $u\in\E'(\R^n)$ we define $\hat u(\xi)=\<u,e^{-ix\x}\>$. Nothing has faster decay than compact support! haha.

$u$ is not a function, there's nothing to differentiate by parts. we can differentiate with respect to $\x$, but then we get powers of $x$ and the whole space ends up growing. we need argument similar to dominant convergence theorem. but powers of $x$ on compact sets are bounded! so we have no problems differentiating with respect to $\xi$.

More complex, take $\xi$ to be a complex vector. exponential may grow exponentially! 

Point is, we define things so that anything outside of support of $u$ is irrelevant!

How does Fourier transform act on holomorphic functions: [[Peley-Wiener Theorem]].

## Differential Operators
$P(x,\x)$ is a polynomial in $\x$. $P(x,\x)=\sum_{|\a|\leq m} a_\a(x)\xi^\a$.
$\a=(\a_1,...,\a_n), |\a|=\sum_i \a_i, \xi^\a=\xi_1^{\a_1}\dots\x_n^{\a_n}$.

Define differential $D_j=\frac{1}{i}\frac{\d}{\d x_j}=\frac1 i \d_j$.

$P(x,D)=\sum_{|\a|\leq m} a_\a(x)D^\a=\sum_{|\a|\leq m} a_\a(x)D^{\a_1}_1\dots D_n^{\a_n}$.

These $a(x)$ can be matrices! there is no difference. 

There is such a thing as index. you have equation. differential operator. what are solutions to homogeneous equation? in some cases there is dimension of space of solutions.

nonhomogeneous equation does not always have solution. but for elliptic operators, there is a solution iff RHS satisfies finite number of linear conditions. this is codimension. Index of operator is difference between dimension of space of solutions and codimenisoin.

If you deform a family of elliptic operators the INDEX does not change!!!

but how to compute it? starting in 1920s-30s, people started crunching it. 65 years ago, one can write the formula. theory of ps.d.o.s played a role in development of indexing!



Lets apply to a function, $P(x,D)u$.

What is Fourier transform of $D_1^{\a_1}\dots D_n^{\a_n}u$?? it is $\x^\a \hat u(\x)$.

$\hat D_j u(\x)=\frac1 i\int\frac{\d u}{\d x_j} e^{-x\x}\,dx=\frac{-1}i(-i)\x_j\hat u(\xi)=\xi_j\hat u(\x)$.

What about inverse foureir transform of $D_1^{\a_1}\dots D_n^{\a_n}u$? 

$(2\pi)^{-n}\int e^{ix\x}\x^\a \hat u(\x)\,d\x$.

$P(x,D)u=(2\pi)^{-n}\int p(x,\x)e^{ix\x}\hat u(\x)\,d\x$.

What was point of this? Inverse fourier of fourier transform? well, $p(x,\xi)$ need not be a polynomial!! so we call it $a(x,\x)$ as a general function.

$a(x,D)=(2\pi)^{-n}\int a(x,\x)\hat u(\x)e^{ix\x}\,d\x$.

where does $a(x,\x)$ live? $S^m$ (Hörmander). 

you can differentiate with respect to $x$ and $\x$. For every compact $K\subset\R^n$ and for every $\a,\beta$, there exists a constant $C(\a,\beta,K)$ such that

$|\d_x^\a\d_\x^{\beta}a(x,\x)|\leq C(\a,\beta,K)(1+|\x|)^{m-|\beta|}, x\in K$. differentiate with respect to $x$ it does not matter.

with respect to differentiatoin, these kinds of functions are not very far away from polynomials! $m$ is the order and can be negative.

suppose $P(x,\x)$ is a polynomial that does not vanish. $f(x)(1+|\x|^{2026})$ . Then $\frac{1}{p(x,\x)}$ is a Hörmander class function.

differentiate with respect to $\xi$, you get $P'/P^2$ is order $-m-1$. 



We call this $P(x,\x)$ the symbol. take highest terms. if homogeneous eq of highest terms does not vanish on a sphere, the operator is elliptic. (the principal symbol is invertible! like determinant \neq 0). Laplace in late 18th century.

We have technical problem: we cannot invert symbols because then it stops defining a differentiable operator.

one strategy, we extened class of symbols. function $a(x,\x)$ is called the symbol. and an operator given by this form is the pseudodiffferential operator defined by the symbol $a$.


We will prove the pseudo-differential operators are an algebra!!!!!!!!!!
- closed under multiplication
- closed under other natural operations
- most difficult: change of variables, chain rule causes some difficulty.


$A u(x)=(2\pi)^{-n}\int\int a(x,\x) e^{i(x-y)\x}u(y)\,dyd\x$. this is another way of writing down a ps.d.o. $A$.

#### Microlocality
differnetial operators satisfy locality. if a function is 0 in a domain and you apply derivatives, you will get 0.

theres a theorem that identifies locality with differential operators.

ps.d.o.s dont satisfy locality, but they do satisfy pseudolocality! If $x\notin\supp u$ then $Au(x)\in C^\infty$ in a neighborhood of $x$. That is $Au(x)\in C^\infty((\supp u)^\complement)$. How do we prove this? integration by parts!!

we do our integration of $Au(x)$ over the support of $u$. 

$\frac{1}{|x-y|^{2N}}(-\Delta_\x)^N e^{i(x-y)\x}$.



we take $(-\Delta)_\x^N e^{i(x-y)\x}=|x-y|^{2N}e^{i(x-y)\cdot\x}$. integrate by parts and move this laplacian to $a(x,\xi)$. ah, but each time we do that, the order of $a$ goes down by one (since it is Hörmander). so $a$ decays in $\x$ fast. so we caan differentiate with respect $x$ and deal with the resulting powers of $\x$!!!


# Tuesday September 1
Start with Hörmander class of symbols $S^m(\R^n)$. $a(x,\x)\in C^\infty(\R^n\times\R^n). \ \forall K\subset\R^n$ compact and multiindices $\alpha,\beta, \exists C_{K,\alpha,\beta}$ such that $|\partial_x^\alpha\partial_\x^\beta a(x,\x)|\leq C_{K,\a,\beta}\<\x\>^{m+|\beta|}$ .

Here $\<\x\>=\sqrt{1+|\x|^2}$.

$Au=(2\pi)^{-n}\int a(x,\x)e^{ix\x}\hat u(\x)\,d\x=(2\pi)^{-n}\int\int a(x,\x)e^{i(x-y)\x}u(y)\,dyd\x.$ One cannot hope this integral converges for general distributions  $u\in \E'(\R^n)$.

Recall we define Fourier transform of compactly supported distribution as $\hat u(\x)=\<u,e^{-ix\x}\>$.

So we treat it as a distribution, so we define what it means to apply $Au$ to a smooth and compactly support function $\psi\in C^\infty_0(\R^n)$.
$\<Au,\psi\>=(2\pi)^{-n}\int\int a(x,\x)e^{ix\x}\hat u(\x)\psi(x)\,dxd\x$.


The inner integral in $x$ makes perfect sense, we integrate over bounded domain. We obtain function of $\x$. 

How does $\int a(x,\x)\psi(x)e^{ix\x}\,dx$ behave as $|\x|$ goes to infinity? We do integration by parts and obtain decaying powers of $\x$.

$(1-\Delta_x)^N e^{ix\x}=\<\x\>^{2N} e^{ix\x}$.

$\int a(x,\x)\psi(x)e^{ix\x}\,dx=\<\x\>^{-2N}\int a(x,\x)\psi(x)(1-\Delta_x)^N e^{ix\x}\,dx$

so $|Au|\leq C_N \<\x\>^{-2N+m}$. Basically can make it decay as fast as you want. 


>[!theorem] 
>Let $u\in\E'(\R^n)$ (be a distribution with compact support). Then $\exists f_\alpha\in L^1_{\text{loc}}(\R^n)$
>$\alpha=(\alpha_1,\dots,\alpha_n)$ finite multiindices.
>then $u=\sum_{\text{finite}} D^\alpha f_\alpha$.

>[!example]
>$n=1, u=\delta(x)$. Take $f(x)=\begin{cases} 0; & x<0 \\ 1; & x\geq 0\end{cases}$
> $\<f',\phi\>=\<-f,\phi'\>=-\int_{x}^{\infty}\phi'(x) dx=\phi(x)$

>[!example]
>$n\geq 3, u=\delta(x)\in R^n$. Want to represent delta function as sum of derivatives of functions.
>delta function invariant under orthogonal transformation. Theorem any such function is a function of the Laplacian. so we try  to understand delta as the laplacian applied to something also invariant under orthogonal transformation, ie a radial function. laplacian must be zero on it outside of zero.
>for radial functions, laplacian is just $\Delta =\frac d {dz^2}+\frac{n-2}2\frac d{dz}$
>look for $\Delta f=0$ outside of $z=0$. 
>the function is $\frac 1 {z^{n-2}}$
>if $n=2$, we just take $\ln x$.
>$\<\Delta\frac1{r^{n-2}},\phi\>=\int\frac{\Delta\phi}{r^{n-2}}\,dx$
>how to deal with singularity at zero? excise a small nbhd of zero and  break it into two integrals. the integral over small ball and integral over the complement.
>$\int_{|x|\leq \epsilon}\frac{\Delta\phi}{r^{n-2}}\,dx+\int_{|x|\geq\epsilon}\frac{\Delta\phi}{r^{n-2}}\,dx$
>integral of small ball centered at 0 goes to 0 as epsilon goes to 0.
>integral complement by greens.
>	$\int \phi(\Delta\frac{1}{r^{n-2}})\,dx+\int_{|x|=\epsilon}\frac{+(n-2)}{r^{n-1}}\phi(x)\,dS+\int_{|x|=\epsilon}\frac{1}{r^{n-2}}$
>	this is bounded.
>	we get this last term bounded by $C\epsilon$, so it also goes to zero as epsilon for zero
>	the other boundary term goes to $(n-2)\omega_{n-1}\phi(0)$, where $\omega$ is are of $n-1$ dim sphere.
>	conclusion: $\Delta\frac{1}{r^{n-2}}=(n-2)\omega_{n-1}\delta$.
>	Thus $\delta(x)=\frac1{n-2\omega_{n-1}}\Delta\frac{1}{r^{n-2}}$
>	This is fundamnetal to solution of Laplace equatiom.

Let $u\in\E'(\R^n)$. Then $u=\sum D^\a f_\a$ and $\hat u(\x)=\<u,\psi e^{-iy\x}\>=\sum_\a \<D^\a f_\a, \psi e^{-iy\x}=\sum(-1)^{|\a|}\<f_\a,D^\a(\psi e^{-iy\x})\>=\sum(-1)^{|a|}\int f_\a(y) D^{\a}_y(\psi(y) e^{-iy\x})\,dy$.
worst case scenario is when you differentiate in $\x$ all the time, ie $|\a|$ amount. So this grows at infinity no faster than $|\x|^{|\a|}$. 

so no matter what distirbutoin you take, there always exits $l$ such that $|\hat u(\x)|\leq C\<\x\>^l$.

Integral $\<Au,\psi\>.$ with respect to $x$ decays faster than any power of $x$. when we multiply by fourier transform of $u$, it can grow, but not faster than a certain power. so take $N$ large enough, you will get an integrable function. 

So fourier transform of dsitribution with compact support is a distribution (not necessariyl with compact support though...)

So for an order $m$ pseudodifferential operator $A\in L^m$, we know that $A:\E'(\R^n)\to\D'(\R^n)$. 

We say $x$ is not in the **singular** **support** of $u$ if there exists a nbhd $U$ of $x_0$ and a smooth function $\psi\in C^\infty(u)$ such that for $\phi\in C^\infty_0(\supp\phi)$, $\<u,\phi\>=\int\psi(x)\phi(x)\,dx$.

Basically, outside the singular support, a distribution looks like a smooth function.

>[!theorem] Pseudolocality
>$u\in\E'(\R^n), A\in L^m$. Then singular support of $Au$ is contained in the singular support of $u$.

Basically, pseudodifferential operators do not propagate singularieites. ???

$u=\sum D^\alpha f_\a$.

$Au=\sum_\a(2\pi)^{-n}\int a(x,\x)\x^\a e^{ix\x}\hat f_\a(\x)\,d\x$

but $a(x,\x)\x^\a$ is ALSO a Ps.D.O., se we can apply what we did last time!


# Thursday September 3rd
### Wavefront Set
Some distribution $u\in\D(\Omega)$, a point $x_0$ and a neighborhood $\Omega$ of $x_0$. Let $\phi\in C^\infty_0(\R^n)) with $\supp\phi\subset \Omega$.

Recall that smoothness of a function means its fourier transform decays fast than any power of $\x$. Thus $\forall \ell, \exists C_\ell$ such that $|\hat{\phi u}(\x)|\leq C_\ell\<\x\>^{-\l}$. 
Note: It goes both ways, inverse fourier transform of something that decays faster than any polynomial must be smooth!

>[!definition] Wavefront Set $WF(u)$
>Let $\x_0\neq 0$. We say $(x,\x)\notin WF(u)$ if there exists an open nbhd $\Omega\ni x_0$ and a conical neighborhood of $\Gamma\ni\x_0$ in $\R^n$ such that $\exists\phi\in C^\infty_0$ with $\supp\phi\subset\Omega$ and $\forall \ell, \exists C=C_{\ell,\phi}$ such that $|\hat{\phi u}(\xi)|\leq C_{\ell,\phi}\<\x\>^{-\ell}$ for $\xi\in\Gamma$. 

Conical Neighborhood: depends only on direction of $\x_0$, invaraiant under scalars! Like conical sections, alg geom projective geometry.Invariant under group action of multiplication by scalars on $\xi\in\R^n$.

Singular support of $u$ is just the projection of $WF(u))$ onto $x$-space.
Wavefront set includes information about "which directions is $u$ singular".

---------------------------------------------------------------
### Change of variables for distributions
suppose we have a diffeomorphism $\Phi: \Omega\to \Omega', y=\Phi(x), x=\Psi(y)$. 

$f(x)\leftrightarrow \tilde f(y)=f(\Psi(y))$. How does this pair with a test function, say $\chi$?

$$\begin{align}
\<\tilde f,\chi\>&=\int \tilde f(y)\chi(y)\,dy\\
&=\int f(\Psi(y))\chi(\Phi(x))\,dy\\
&=\int f(x)\chi(\Phi(x))|\Phi'(x)|\,dx\\
&=\<f,(\chi\circ\Phi)|\Phi'|\>
\end{align}$$
$|\Phi'(x)|$ is determinant of jacobian matrix. We take this as definiiton of change of variables on distributions.

>[!definition] Change of Variables for Distributions
>Let $\tilde u=u\circ\Phi^{-1}$. Then
>$\<\tilde u,\chi\>:=\<u,(\chi\circ\phi)|\Phi'|\>$

>[!remark]
>There is difference between formal definition and the formulation for diffeomorphisms.... what if $\Phi$ is not a diffeomorphism?

If $y=Ax$ then $\<\tilde u,\chi\>=|A|\<u,\chi(Ax)\>$. 

$$\begin{align}
\<\phi(y)\tilde u, e^{-iy\cdot\eta}\>&=|A'|\<\phi(\Phi(x))u,e^{-i(Ax,\eta)}\>\\
&=|A'|\<u,\phi(Ax)e^{-i(Ax,\eta)}\>\\
&=|A'|\<u,\phi(Ax)e^{-i(x,A^\top\x)}\>
\end{align}$$

If $(x,\x)\in WF(u)$ and $\x=A^{\top}\eta$, then $(y_0,\eta)\in WF(\tilde u)$.
$(0,\xi), (A(0), (A^\top)^{-1}\xi)$

**exericse: wavefront set can be interpreted as a subset to the cotangent bundle.**
everything lives in the cotangent [[cotangent bundle]].


### Microlocality (continuing into Tuesday September 8)

>[!definition] Locality
>An operator $A$ is local if it does not enlarge the support of a function. If $u\equiv 0$ on $\Omega$, then $Au\equiv 0$ on $\Omega$. 
>$\supp Au\subset \supp u$??

>[!theorem] Microlocality of pseudo-differential operators
>Let $u\in\mathcal E '(\Omega)$ and $A\in L^m$ (Ps.D.O. of order $m$).
>Then $WF(Au)\subset WF(u)$ 

Microlocal: specifcy coordinates and momentum. Microlocality implies pseudolocality, since singular support is just projection of wavefront set.

>[!proof]
>Pseudolocality ensures we're safe outside of $\supp u$, so we only need to check $Au$ on $\supp u$. We want to show that $(WF(u))^\complement\subset (WF(Au))^\complement$
>Let $(x_0,\x_0)\in WF(u)$. Then there exists a conical neighborhood $\Gamma$ of $\x_0$ such that $u$ decays faster than any polynomial in that direction. We take a smaller conical neighborhood $\tilde\Gamma\subset \Gamma$. 
>Choose a cut-off $\psi$ and a function $\phi$ that is identically 1 in a very small neighborhood of $x_0$, smaller than $\Omega$. 
>$u=\phi u + (1-\phi) u$, but (1-\phi) is very small or just zero, so we focus on the $\phi u$ part.
>We take the Fourier transform of the distribution ${\psi A(u\phi)}$:
>$$\begin{align}
>\psi A(u\phi)&=\psi(x)(2\pi)^{-n}\int a(x,\x)e^{ix\x}\widehat{u\phi}(\x)\,dx\\
>\widehat{\psi A(u\phi)}(\eta)&=(2\pi)^{-n}\int\int \psi(x)a(x,\x) e^{ix(\x-\eta)\widehat{u\phi}(\xi)}\,dxd\x
>\end{align}$$ 
>$|\widehat{\phi u}(\x)|\leq C_k\<\x\>^{-k} \ \forall k \exists C_k$.
>Fourier transform of $\widehat{u\phi}(\x)$ is rapidly decaying in $\Gamma$, so outside of $\Gamma$ it is not necessarily rapidly decaying, but it grows not very fast. We break into two integrals, when $\x\in\Gamma$ and $\x\notin\Gamma$.
>$I=I_1+I_2, I_1: \x\notin\Gamma, I_2:\x\in\Gamma$. We take $\eta\in\tilde\Gamma$.
>
>Lets look at $I_2$. $a$ is a symbol but its multiplied by a rapidly decaying function. it is a convergent integral. What we want to show is that it's also rapidly decaying in $\eta$. We have to cook up negative powers of $\eta$ via integration by parts!
>$$\begin{align}
>(1-\Delta_x)e^{-ix\eta}&=(1+|\eta|^2)e^{-ix\eta}\\
>e^{-ix\eta}&=(1+|\eta|^2)^{-N}(1-\Delta_x)^N e^{-ix\eta}
>\end{align}$$
>$I_2=(1+|\eta|^2)^{-N}(2\pi)^{-n}\int\int(1-\Delta_x)^N[\psi(x)a(x,\x)e^{ix\x}]e^{ix\x}\widehat{u\phi}(\x)\,dxd\x$ for $\x\in\Gamma$.
>with $\x$ and $\eta$ separated, we can kill powers with our estimate for $|\widehat{\phi u}(\x)|$.
>Now we look at $I_2$.
>$$I_1=(2\pi)^{-n}\int\int_{\x\notin\Gamma} a(x,\x)\psi(x)e^{ix(\x-\eta)}\widehat{u\phi}(\x)\,d\x dx$$
>Outside of $\Gamma$, we don't have rapid decay of $|\widehat{u\phi}|$. However, because this is Fourier transform of distribution with compact support, we know there exists $\ell, C$ such that $|\widehat{u\phi}(\x)|\leq C\<\x\>^\ell$
> We apply same trick that $e^{i(\x-\eta)x}=\left(\frac{1}{1+|\x-\eta|^2}\right)^N(-\Delta_x)^N e^{i(\x-\eta)x}$.
>$$I_1=(2\pi)^{-n}\int_{\x\notin\Gamma}\<\x-\eta\>^{-2N}\,d\x\,\int (1-\Delta_x)^N a(x,\x)\psi(x)e^{ix(\x-\eta)}\widehat{u\phi}(\x)\, dx$$
>$$|int|\leq C C_N \<\x\>^{m+\ell}$$
>$$|I_1|\leq \tilde C_N \int_{\x\notin\Gamma} \<\x-\eta\>^{-2N}\<\x\>^{m+\ell}\,d\x$$
>Converges for $m+\ell-2N<-n$.
>$\x-\eta|^2=|\x|^2+|\eta|^2-2|\x||\eta|\cos\theta$, where $\theta$ is angle between $\x$ and $\eta$. But $\cos\theta<\tau<1$. So $|\x-\eta|^2\geq|\x|^2-|\eta|^2+2\tau|\x||\eta|$
>$\x-\eta|^2\geq (1-\tau)(|\x|^2+|\eta|^2)$
>$\<\x-\eta\>\geq c\<\x\>\<\eta\>$.
>$$|I_1|\leq \tilde C\<\eta\>^{-N}\int\<\x\>^{-N+m+l}\,d\x$$
>Q.E.D.
>Two major methods in this field: Integration by parts and separating integrals (deal with different regions with different behavior separately)
 
# Tuesday September 8
## Asymptotic Series
Let $a_j\in \mathcal S^{m_j}, m_j\to\infty$ monotonic decreasing. (sequence of Hörmander class function of degree $m_j)$.

>[!definition] Asymptotic Sum
>$a\in \mathcal S^{m_1}, a\sim\sum_{j=1}^\infty a_j$ is an asymptotic sum of $a_j$ if $a-\sum_{j=1}^k a_j \in \mathcal S^{m_{k+1}}$.

>[!theorem] Existence of Asymptotic Sum
>Given $a_j\in S^{m_j}, m_j\to-\infty$, then there exists $a(x,\x)\in S^{m_1}$ such that $a(x,\x)\sim\sum_{j=1}^\infty a(x,\x)$.

>[!proof]
>To make sums convergent, we have to regularize. we can take excising function (0 in neighborhood of 0, 1 outside that neighborhood, like opposite of a cut-off).
>Take excising function $\psi(\x)\in C^\infty, \psi(\x)=0$ if $|\x|\leq \epsilon$ and $\psi(\x)=1$ if $|\x|\geq 1$. For some $t_j\to\infty$ take $a(x,\x)=\sum_{i=1}^\infty \psi(\frac{\x}{t_j})a_j (x,\x)$.
>Now we just need to take the difference.
>Note that $|x|\leq M$ becuase 
>Let $b_k(x,\x)=a-\sum_{j=1}^k a_j$.
>$b_k(x,\x)=\sum_{j=1}^k\left[\psi(\frac{\x}{t_j})-1\right]a_j(x,\x)+\sum_{j=k+1}^\infty \psi(\frac{\x}{t_j})a_j(x,\x)$
>We take $\sum_{j=1}^\infty\partial_x^\a\partial_\x^\b\left[\psi(\frac{\x}{t_j})a_j(x,\x)\right]$
>For integration by parts we need another multiindex $\gamma\leq\beta$. ie $\gamma_i\leq \beta_i$. Binomial $\begin{pmatrix}\beta\\\gamma\end{pmatrix}=\begin{pmatrix}\beta_1\\\gamma_1\end{pmatrix}\begin{pmatrix}\beta_2\\\gamma_2\end{pmatrix}...$
>Our sum $=\sum_{j=1}^\infty \sum_{\gamma\leq \beta}\begin{pmatrix}\beta\\\gamma\end{pmatrix} t_j^{-|\gamma|}(\partial^\gamma_\x\psi)(\frac\x{t_j})\partial_x^\a\partial_\x^{\b-\gamma} a_j(x,\x)$
>$\leq C\sum_j\sum_{\gamma\leq\b} t_j^{-|\gamma|}\<\x\>^{m_j-|\beta-\gamma|}|\partial_\x^\gamma \phi(\frac\x{t_j})$
>For fixed $j$, if $|\x|\leq\frac{t_j}2$, then the $\psi$ term is 0 for $\gamma\neq 0.
>If $|\x|\geq t_j$, then the term is 1 if $\gamma=0$.
>




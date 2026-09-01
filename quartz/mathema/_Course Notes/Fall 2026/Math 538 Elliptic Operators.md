Instructor: Lennie Friedlander


assessment: 30minute presentation at the end of the semester.


- Month 1: pseudodifferential operators
	- shubin chapter 1

 for the very ambitious volume 1 hormander PDEs. equidistribution
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

How does Fourier transform act on holomorphic functions: Peley-Wiener Theorem.

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

where does $a(x,\x)$ live? $S^m$ (Horrmander). 

you can differentiate with respect to $x$ and $\x$. For every compact $K\subset\R^n$ and for every $\a,\beta$, there exists a constant $C(\a,\beta,K)$ such that

$|\d_x^\a\d_\x^{\beta}a(x,\x)|\leq C(\a,\beta,K)(1+|\x|)^{m-|\beta|}, x\in K$. differentiate with respect to $x$ it does not matter.

with respect to differentiatoin, these kinds of functions are not very far away from polynomials! $m$ is the order and can be negative.

suppose $P(x,\x)$ is a polynomial that does not vanish. $f(x)(1+|\x|^{2026})$ . Then $\frac{1}{p(x,\x)}$ is a Hormander class function.

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



we take $(-\Delta)_\x^N e^{i(x-y)\x}=|x-y|^{2N}e^{i(x-y)\cdot\x}$. integrate by parts and move this laplacian to $a(x,\xi)$. ah, but each time we do that, the order of $a$ goes down by one (since it is hormander). so $a$ decays in $\x$ fast. so we caan differentiate with respect $x$ and deal with the resulting powers of $\x$!!!
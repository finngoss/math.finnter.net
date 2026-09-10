Doug Pickrell

History:
- 1664-65: Newton
- 1700s: Euler
- 1812: Fourier Series
- 1830s: Cauchy
- 1854: Riemann
	- still no coherent logical foundation for mathematics!
	- introduced riemann integral to make precise statements about fourier 
	- Weierstrass was a critic of Riemann
- 1900: bertrand russel identified some inconsistencies in foundations
- 1900s: Lebesgue put analysis on solid foundation
- 1920s: Weyl gives correct definition of a manifold

Suppose that you consider a simply connected region. Riemann mapping theorem says there exists a complex differnetiable bijection between the region and the disk.
- conformal maps, preserve angles!


Mandelbrot looked at brownian loops and substracted interior. what he observed is that the boundary was self avoiding


### Cauchy Riemann equations
For a complex diff function $f=(u,v)$ we have $u_x=v_y$ and $u_y=-v_x$.

equivalently: $\frac{\d f}{\d\bar z}=0$. 


# Thursday September 3
Two parts of complex analysis:
1. local properties of a differentiable function


>[!theorem] Complex Analyticity
>a. if $w=f(z)$ is complex differentiable, then $f$ is complex analytic, that is $f\in C^\infty$ and admits a Taylor expansion at each point in the domain $z_0\in\Omega$.
>b. If $\bar B(z_0,R)\subset\Omega$, then the radius of convergence of Taylor series is at least $R$.
>c. $\frac1{n!} f^{(n)}(z_0)=\frac1{2\pi i}\int_{|z-z_0|=R} \frac{f(z)}{(z-z_0)^{n+1}} \, dz$

Greens theorem, FTC go brrrrrr.

$\bar\partial F=0$ is an elliptic operator, so solutions are always smooth!

Cauchy gave a direct proof. 


>[!proof]
> Let $\Omega\subset\C$ and. $R\subset \Omega$ be a closed region with a smooth boundary with orientation s.t walking around the boundary keeps to the region on the left.
> Suppose $F(z):\Omega\to\C$ is a **continuously complex** differentiable function.
> $\int_{\partial R}F(z)\,dz=\int_R dF\wedge dz=\int_R (\frac{\partial F}{\partial z}dz+\frac{\partial F}{\partial \bar z}d\bar z)\wedge dz=0$
> 	$F(z)=\frac1{2\pi i}\int\frac{f(z)}{(z-z_0)}^{n+1}$
> $\frac1{n!}f^{(n)}(z)=\frac1{2\pi i}\int_{|\zeta-z|=R}\frac{f(\zeta)}{(\zeta-z_0)^{n+1}}\,d\zeta=\frac1{2\pi R^n}\int_{0}^{2\pi} f(z+Re^{i\theta})e^{-in\theta}\,d\theta$. 
> When $n=0$, this means $f(z_0)$ is the average of values of $f$ around the boundary of the disk
> We also have to show that $F$ is smooth.
> 	either directly prove that $\frac{\partial F}{\partial \bar z}=0$ impleis that $F\in C^\infty$
> 	or use the result of Cauchy that $F$ being complex differentiable implied that $\int_{\partial \bar R} F(x)\,dz=0$
> Finishing the proof:
> $F(\zeta)=\frac{f(\zeta)}{\zeta-z_0}
> dgaf




**review: calculus on manifolds, differential forms**

geometric series, smth smth residue....


# Tuesday September 8th
Consequences of Complex Analyticity.

>[!theorem] Liouville's Theorem
>Suppose $f(z)$ is complex differentiable on $\C$ (f is entire). If $f$ is bounded then $f$ is constant.

Fundmanetal Theorem of Algebra follows!!!!




Can we write entire functions as infinite product of $(z-z_i)$? eg. doesnt work for exponential function because it has no zeroes.

but you can write $f(z)=e^{g(z)}\prod(z-z_i)$ under certain conditions! (in rudin at a later chapter)

>[!theorem]
>Suppose $f\in H^0(\Omega)$ (holomorphic = complex analytic = complex differentiable). $\Omega\subset \C$ open.
>Then $Z(f)=\{\text{zeroes in} \ \Omega\}$ is either the whole set or a discrete countable set.

>[!theorem] Maximum Modulus Theorem
>Suppose $f$ is holomorophic in an open set $\Omega$. Take a closed set $D\subset\Omega$. Then
>(a) $\sup_D |f(z)|\leq\sup_{\d D}|f(z)|$
>(b) If $|f(z)|$ has a local maximum in the interior of $D$, then $f$ is constant. 

why? the idea here is that the value at the max is the average of the values at the boundary of a small neighborhood. IE it is constant in that neighborhood. IE it is constant. 

>[!theorem] Morera's Theorem
>Suppose $f$ is continuous on some $\Omega$ and $\in_{\d T} f(z,\bar z)\,dz=0$ for all traingles $T\subset \Omega$.
>Then $f$ is complex differnetiable (and hence analytic).


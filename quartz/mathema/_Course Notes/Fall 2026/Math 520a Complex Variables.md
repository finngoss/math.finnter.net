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
> 	$F(z)=\frac1{2\pi i}=\int\frac{f(z)}{(z-z_0)^$

**review: calculus on manifolds, differential forms**

geometric series, smth smth residue....



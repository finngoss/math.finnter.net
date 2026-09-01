Let $f\in L^1(\R^n)$ and $\Lambda$ be a unimodular [lattice](Lattices.md) in $\R^n$. The periodization of $f$ is
$$f_\Lambda(x)=\sum_{\lambda\in\Lambda} f(x+\lambda)$$

Poisson summation can be formulated to tell us $f_\Lambda$ converges to the sum of its Fourier transform over the dual lattice $\Lambda'$.
$$f_\Lambda(x)\sim\sum_{\lambda'\in\Lambda'} \hat f(\lambda')e^{2\pi i\lambda'x}$$

Given a [lattice] $\Lambda\subset\R^n$, consider the locally fnite measure (Dirac comb) $\delta_\Lambda=\sum_{x\in\Lambda}\delta_x$, where $\delta_x$ is normalized [[dirac delta]] measure at $x$.


Differential operators act on functions defined over some spacetime. We can take the [[Fourier transform]] of any Lebesgue integrable function to instead consider a function over frequency space. We might then ask the question "how do differential operators act on functions in frequency space?"

Let $u(x,t)$ be a function over some $n$-dimensional Euclidean domain $\Omega$. Consider the [[Laplacian]] operator
	$$\Delta u=-\sum_{i}\frac{\partial}{\partial^2 x_i}u.$$
Consider the Fourier transform
$$\hat u(\xi)=\int_\Omega e^{-ix\cdot \xi}u(x)dx$$
$\Delta \hat u(\xi)=|\xi|^2\hat u(\xi)$.

$$\frac{1}{i}\partial\leftrightarrow -\xi$$
$$\Delta\leftrightarrow|\xi|^2$$

Fourier transform allows us to translate analytic/spatial information into algebraic/spectral information.

We might define $$\sqrt{-\Delta}\leftrightarrow\xi$$

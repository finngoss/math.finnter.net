We say an operator $A$ is local if for all function $u$, $Au(x)$ can be determined just by knowing the values of $u$ close to $x$.

That is if $u=v$ on some neighborhood of $x$, then $Au(x)=Av(x)$ on that neighborhood.


Non-example:
$$Af(x)=\int_{\infty}^x f(y)dy.$$
We could have also written this as
$$Af(x)=\int_\R \mathbb1_{y\leq x} f(y)dy,$$
with its kernel $K(x,y)=\mathbb1_{y\leq x}$. Notice that the kernel itself is supported quite (infintely) far from $x$.

Now consider an ultra-local kernel like $K(x,y)=\delta(x-y)$, its support is entirely localized to the diagonal $x=y$. If we look at the operator this defines through [[integral transform]], we obtain the identity
$$If(x)=\int_\R\delta(x-y)f(y)dy=f(x).$$

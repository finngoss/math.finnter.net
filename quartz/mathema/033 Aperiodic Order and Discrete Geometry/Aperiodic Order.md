#theory 

Defintions from chapter 2 of Baake and Grimms Aperiodic Order vol 1:

- A *point set* is countable union of singletons
	- a point set $\L$ is said to be *discrete* if $\forall\l\in\L \ \exists r_\l$ such that $B_{r_\l}(\l)\n\L=\l$.
	- a point set $\L$ is said to be *uniformly discrete* if there exsts an open neighborhood $U$ of $0\in\R^d$ such that $(x+U)\n(y+U)=\varnothing$ holds for all distinct $x,y\in\L$.
	- A point set $\L$ is said to be *relatively dense* if a compact $K\subset\R^d$ exists such that $\L+K=\R^d$.
	- A point set is a *Delone set* if it is both uniformly discrete and relatively dense.
		- note that A Delone set necessitates the existence of two radii, $U=B_r(0), K=\bar{B_R(0)}$ are the appropriate confining neighborhoods of uniform discreteness and relative density. 
		- We let $\mathcal D_{(r,R)}$ denote the set of Delone sets compactible with $U,K$ as described above.
		- We may also define the *packing radius $r_p$* and *covering radius $R_c$* 
		$$
\begin{gather*}
		r_p=\sup\{r>0:\Lambda\in\U_{R>0}\mathcal D_{(r,R)}\}\\
		R_c=\inf\{R>0:\Lambda\in\U_{r>0}\mathcal D_{(r,R)}\}
\end{gather*}
		$$
	- A point set is *Meyer* set of $\L$ is relatively dense and $\L-\L$ is uniformly discrete. 


A *crystallographic point packing* $\L$ is a set such that $\L=\Gamma+F$, where $\Gamma$ is a lattice and $F$ is a finite point set.
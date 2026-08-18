#field #analysis

Microlocal Analysis is a branch of [[Analysis]] that is performed on the cotangent bundle, or rather, phase space. 

"A particular focus of microlocal analysis lies on the study of the *singularities* of solutions of PDEs. Unlike local analysis, which is concerned with the regularity of distirbutions near points of particular interest, *micro*local analysis is concerend with regularity *in phase space,* i.e., in position *and momentum*." -- Peter Hintz in 'An Introduction to Microlocal Analysis'

Put simply, it is analysis in both position and frequency. Instead of only focusing on $x\in M$, microlocal analysts consider $(x,\xi)\in T^*M$, where $x$ is a position vector and $\xi$ is a frequency covector.  

The greatest feature of Microlocal Analysis is that you can always relate differential operators to algebraic symbols via [[Fourier Transform]]. For example, taking the Fourier tranform of the [[Laplacian]] gives you $|\xi |^2$ (**elaborate**). Similarly, any order $m$ differential operator can become an order $m$ polynomial in frequency. This gets into the beautiful theory of [[Pseudo-Differential Operators]].


Some things in the microlocal toolkit:
- Every differential operator has an algebraic representation.
- [[Resolvent Formalism]]
- [[poisson bracket]]
	- for example, is the poisson bracket of an operator with the Hamiltonian is positive definite, then some quantity is increasing.
- [[Fourier Transform]], everywhere! ***

*** but there's a problem with this last one. Since the Fourier transform is global, it pulls far away information back to you. But microlocal analysts have a solution to this! They define various cut-off functions, some $\chi\in C^\infty(M)$, supported locally near some $x\in M$. Thus by taking the Fourier transform of $\chi u$, one is able to remove everything outside from the point they're considering.  

This is usually applied to points living in the [[wave front set]], which can roughly be thought of as a subset of the cotangent bundle that captures the singularities of a function $u$ in *both position and space.* This is the heart of microlocal analysis: localizing in *both position and frequency*.

The microlocal analog of the smooth cut-off that allowed for localization in position is the pseudo-differential operator that allows for microlocalization in the cotangent bundle.


The ability to do so has made it aptly suited for a number of applications such as:
- controling PDEs on Lipschitz domains. 

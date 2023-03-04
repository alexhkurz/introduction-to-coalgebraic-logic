---
tags: mathematics, coalgebraic logic, 
---

# Moss's Coalgebraic Logic

(under construction)


Given a coalgebra $\gamma:X\to TX$ and the set of all formulas $\Phi$ and $\theta\in T\Phi$, we define the semantics of the formla $\nabla\theta$ via
$$x\Vdash \nabla\theta \quad\Longleftrightarrow\quad \gamma(x)\,  \widehat T(\Vdash)\, \theta $$

where $\overline T$ is the [relation lifting](https://hackmd.io/@alexhkurz/ByPA9_Juu) of $T$.

**Example:** If $T=\mathcal P$ the powerset functor and $R\subseteq X\times Y$, then the relation lifting $\widehat{\mathcal P}R\subseteq \mathcal PX\times\mathcal PY$ is given as follows.
$$(A,B)\in\widehat{\mathcal P}R \quad\Leftrightarrow\quad \forall x\in A.\exists y\in B. (x,y)\in R \quad \&\quad 
\forall y\in B.\exists x\in A. (x,y)\in R
$$ 

Instantiating $A=\gamma(x)$ and $B=\theta$ we get

$$\gamma(x)\,  \widehat{\mathcal P}(\Vdash)\, \theta \quad\Leftrightarrow\quad \forall y\in\gamma(x).\exists \phi\in\theta. y\Vdash\phi \quad \&\quad 
\forall\phi\in\theta.\exists y\in \gamma(x). y\Vdash\theta
$$ 

With $\theta = \{\phi_1,\ldots\phi_n\}$ we can now rewrite this using $\Box$ and $\Diamond$ to obtain

$$\nabla\theta = \Box(\phi_1\vee\ldots\phi_n)\wedge\Diamond\phi_1\wedge\ldots\Diamond\phi_n$$

( ... more to follow ...)

## References

- Lawrence S. Moss: [Coalgebraic logic](https://www.sciencedirect.com/science/article/pii/S0168007298000426), 1999.
- Kurz, Leal: [Modalities in the Stone age: A comparison of coalgebraic logics](https://alexhkurz.github.io/papers/mfps09KurzLeal-jv.pdf), 2012.

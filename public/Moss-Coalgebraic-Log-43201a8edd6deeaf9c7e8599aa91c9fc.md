---

# Moss's Coalgebraic Logic

(under construction)


Given a coalgebra $\gamma:X\to TX$ and the set of all formulas $\Phi$ and $\theta\in T\Phi$, we define the semantics of the formla $\nabla\theta$ via

$$x\Vdash \nabla\theta \quad\Longleftrightarrow\quad \gamma(x)\,  \widehat T(\Vdash)\, \theta $$

where $\widehat T$ is the [relation lifting](https://hackmd.io/@alexhkurz/ByPA9_Juu) of $T$.

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

**Definition:** The syntax of Moss's logic [^syntaxMoss] is given by the functor

$$FTU:{\sf BA}\to {\sf BA}$$

and the semantics is given for finite sets $X$ by the BA-morphism $FTUPX \to PTX$ which is the adjoint transpose of the function $TUP\stackrel\rho\longrightarrow UPTX$ that arises from applying the relation lifting of $T$ to the elementship relation.[^semanticsMoss]

[^syntaxMoss]: One often takes the finitary version of $T$ defined as the left Kan extension of the restriction of $T$ to finite sets. This is more in the spirit of using a finitary variety such as Boolea algebra for the base logic.

[^semanticsMoss]:


\begin{align}
X\times 2^X & \stackrel\in\longrightarrow  2\\
TX\times T(2^X) & \stackrel{\widehat T\in}\longrightarrow 2\\
T(2^X) &\to 2^{TX}
\end{align}

## References

- Lawrence S. Moss: [Coalgebraic logic](https://www.sciencedirect.com/science/article/pii/S0168007298000426), 1999.
- Kurz, Leal: [Modalities in the Stone age: A comparison of coalgebraic logics](https://alexhkurz.github.io/papers/mfps09KurzLeal-jv.pdf), 2012.

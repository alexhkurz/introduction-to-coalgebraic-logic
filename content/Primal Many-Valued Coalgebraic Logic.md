---

$\newcommand{\sem}[1]{[\![#1]\!]}$ 

# Primal and Semi-Primal Algebras

## Primal algebras

**Definition:** $A$ is a primal algebra if for all natural numbers $n\ge 1$ all functions $A^n\to A$ are term-definable.

**Proposition:** (Sioson, 1961) An algebra $A$ is primal iff the free algebra in $HSP(A)$ over $n$ generators is given by $A^{A^n}$.

**Theorem:** (Hu, ) An algebra $A$ is primal iff $HSP(A)$ is isomorphic (equivalent) to the category of Boolean algebras.

*Proof:* "only if": Let $A$ be primal. Define functors $F:BA\to HSP(A)$ and $G:HSP(A)\to BA$ via $F(2^{2^n})=A^{A^n}$ and $G(A^{A^n})=2^{2^n}$ for finite sets $n$. $F,G$ define sifted colimit preserving functors between varieties and, by definition, $F,G$ are inverse to each other. "if": ... 

Conversely, let $F:BA\to HSP(A)$ and $G:HSP(A)\to BA$ be an equivalence of categories. Then ...

**Remark:** $F(B)=A[B]$ where $A[B]$ is the Boolean power of ...

## Semi-primal algebras

**Definition:** An algebra $D$ is semi-primal if the full sub-category of $HSP(D)$ spanned by sub-algebras of $D$ is posetal.

Equivalently: 
- Identities are the only automorphisms on subalgebras of $D$.
- ...

**Prop:** Let $E$ be the smallest subalgebra of the semi-primal algebra $D$. Then the inclusion $E\to D$ is epi.

*Proof 1:* This follows from the [Boolean skeleton](https://hackmd.io/@alexhkurz/r1L8zR4oo) functor being faithful and mapping $E\to D$ to the identity $2\to 2$.

*Proof 2:* 

## References

- Quackenbush, R. W. Appendix 5: Primality: the influence of boolean algebras in universal algebra. In Georg Gra ̈tzer. Universal Algebra. Second Edition. Springer, New York, 1979, pp. 401–416.



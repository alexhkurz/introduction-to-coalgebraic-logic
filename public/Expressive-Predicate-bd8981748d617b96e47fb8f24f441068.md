# Expressive Predicate Liftings

(draft ... references to be added)

For every functor $T:\sf Set\to Set$ there is a natural transformation ($n$ runs over all positive integers and the product is taken over all finitary predicate liftings)

$$ TX\to \prod 2^{({2^n}^X)}$$

which, for a choice of predicate lifting $\triangle: T(2^n)\to 2$ and predicate $\phi:X\to 2^n$, applies

$$TX\stackrel {T\phi} \longrightarrow T(2^n)\stackrel\triangle\longrightarrow 2$$

to elements of  $TX$.

**Proposition:** The natural transformation is injective on all finite $X\not=\emptyset$. [^standard]

[^standard]: One can eliminate this proviso $X\not=\emptyset$ by restricting to standard functors. Every set functor has a canonical standard functor which, moreover, induces an equivalent category of coalgebras.

*Proof:* Let $s\not=t\in TX$. We have to show that there are $n$, $\phi$ and $\triangle$ such that $\triangle(T\phi(s))\not=\triangle(T\phi(t))$. We choose $n$ and $\phi$ so that $\phi:X\to 2^n$ is injective. Since $X\not=\emptyset$ it follows that also $T\phi$ is injective, that is, $T\phi(s)\not= T\phi(t)$. Finally, we choose some $\triangle:T(2^n)\to 2$ that separates the two.

**Remark:** This proofs shows that any two distinct elements of $TX$ are separated by some predicate $X\to 2^n$ and predicate lifting $T(2^n)\to 2$. 

**Remark:** For finitary functors $T$ we can drop the restriction to finite sets.

**Corollary:** For a finitary functor $T:\sf Set\to Set$ the logic of all predicate liftings is expressive in the sense that for any two non-bisimular points there is a distinguishing formula.

(I can add a proof sketch if that turns out to be of interest.)


## References

The results of this section are due to 

- Lutz Schroeder: [Expressivity of coalgebraic modal logic](https://www.sciencedirect.com/science/article/pii/S0304397507007074?via%3Dihub). 2008.

An axiomatic approach generalising to other categories than Set was presented by

- Bartek Klin: [link text](https:// "title")

The results can also be extended to the poset-enriched situation

- Kapulkin, Kurz, Velebil: [link text](https:// "title")

where expressivity is the stronger property that the logic does not only detect bisimulation but also simulation.



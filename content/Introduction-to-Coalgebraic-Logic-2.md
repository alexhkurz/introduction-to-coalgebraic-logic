---
tags: coalgebraic modal logic, maths, functorial modal logic
---

# Introduction to Coalgebraic Logic

(under construction ... [up](https://hackmd.io/@alexhkurz/Hy1oUrS4u))


Going back to our disucssion on [Varying the Parameters of Coalgebraic Logic](https://hackmd.io/@alexhkurz/BJkdrhQHd)

we recall that coalgebraic logic is paramterised over 

 - an adjunction $S^{\rm op}\dashv P:\mathcal X^{\rm op}\to\mathcal A$
 - functors $T:\mathcal X\to\mathcal X$ and $L:\mathcal A \to \mathcal A$

We also call this functorial modal logic because the syntax and the axioms of modal logic is here represented by the functor $L$ and the semantics by how $L$ relates to $T$.

While our intention is to develop coalgebraic logic axiomatically by describing abstract properties of $T,P,S,L$, we concentrate for now on the case where $\mathcal X$ is the category of sets, or the category of Stone spaces and where $\mathcal A$ is the category of Boolean algebras.

Much of the theory develops smoothly in case that $\mathcal A$ is a (finitary) variety and $L$ is a functor that preserves finite products and reflexive coequalisers, or, in short, sifted colimits. Sifted colimit preserving functors play a role here because they are exactly those that can be presented by operations and equations, ensuring that the abstract functorial framework captures exactly modal logics definable given by a collection of modal operations of finite arity and so-called rank-one axioms, that is, axioms that do not contain nested modal operations.

In some places (eg for canonical extensions) the theory works best in cases where finitely generated free algebras are finite (which is the case for semilattices, Boolean algebras, distributive lattices, and many of the varieties of algebras for which natural duality works best.)

The case of positive (ie negation-free) logic where $\mathcal A =\sf DL$ is the category of distributive lattices is best treated in the context of order-enriched category theory, which we will come back to later in [Coalgebraic Logic over Orders](https://hackmd.io/@alexhkurz/H1_cXRjrd).

This can then be generalised to coalgebras over metric spaces and other quantale-enriched categories.




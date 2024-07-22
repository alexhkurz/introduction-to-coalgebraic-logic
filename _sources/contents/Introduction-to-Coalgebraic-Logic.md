---
tags: coalgebraic logic
---
# Introduction

(draft ... references to be added)

We assume here that the reader has seen some propositional and modal logic and is interested in how Kripke structures  can be generalised to coalgebras. Coalgebraic logic can be seen as generalising modal logic along the following parameters:

 - a category $\mathcal X$ whose objects are state spaces,
 - a "type" functor $T:\mathcal X\to\mathcal X$ specifying the type of dynamics,
 - a category $\mathcal A$ whose objects are propositional theories,
 - a "logic" functor $L:\mathcal A \to \mathcal A$ specifying modal operators and their axioms,
 - a contravariant adjunction relating the logic $(\mathcal A,L)$ and the semantics $(\mathcal X,T)$.

To go through this in detail will take some time. Let us start by sketching how coalgebras generalise Kripke structures.

The notion of coalgebra is parameterised by that of a functor $T:\mathcal X\to \mathcal X$ on some category of "spaces" $\mathcal X$. An object $X\in\mathcal X$ generalises the set $X$ of worlds of a Kripke frame, $T$ represents the type of transitions and the relation $R$ of a Kripke frame $(X,R)$ is a coalgebra $X\to TX$ when $TX=\mathcal PX$ is the set of subsets of $X$. 

Similarly, modal logics can be parameterised by functors $L$  accounting for both modal operators such as $\Box$ and $\Diamond$ and axioms such as $\Box$ preserving meets and $\Diamond$ preserving joins.

Duality theory can be used to develop the theory of coalgebras together with their modal logics. In fact, often the functors $T$ and $L$ will be dual to each other in a precise mathematical sense, giving rise to automatic soundness, completeness and expressiveness results.

In the following we summarise the basic ingredients necessary to carry out this approach.

The paradigmatic example of the powerset functor $T=\mathcal P$ is reviewed in some detail in this note on [powerdomains](https://hackmd.io/@alexhkurz/r1SJ8lizO).

## Idea

We extend a basic dual adjunction between a category $\mathcal S$ of "spaces" and a category $\mathcal A$ of "algebras", to a dual adjunction between coalgebras for a functor $T$ on $\mathcal S$ and algebras for a functor $L$ on $\mathcal A$.

In more detail, we have

- a category $\mathcal X$ of "spaces"
- a category $\mathcal A$ of "algebras"
- an adjunction $S\dashv P: \mathcal X^{op}\to\mathcal A$

We think of $P$ as mapping a space $X$ to its algebra of **p**ropositions or **p**redicates. In many examples, $P$ is actually the **p**owerset functor.

We think of $S$ as mapping an algebra $A$ to its **s**pectrum, or the dual **s**pace of the algebra.

In addition, we have

- a functor $T:\mathcal X\to\mathcal X$
- a functor $L:\mathcal A\to\mathcal A$

We think of $T$ as the **t**ype functor of generalised **t**ransition systems and of $L$ as the functor building a **l**anguage or **l**ogic over some atomic propositions.

We write $Coalg(T)$ for the category of coalgebras for the functor $T$ and $Alg(L)$ for the category of algebras for the functor $L$. 

**Proposition:** If $S\dashv P$ are a dual equivalence and $PT\cong LP$, then $Coalg(T)$ is dually equivalent to $Alg(L)$.

**Example:** The duality of descriptive general frames and Boolean algebras with operators arises in this way.

If $S\dashv P$ is only a dual adjunction, it lifts to coalgebras/algebras only under special circumstances.


## The modal logic view

The above framework is very abstract. When is it legitimate to think of coalgebras as transition systems and of algebras as logics?

The paradigmatic example is the one where 
- $\mathcal X$ is the category of sets
- $\mathcal A$ is the category of Boolean algebras
- $T$ is the powerset functor
- $Coalg(T)$ is the category of Kripke frames (transition systems)
- $Alg(L)$ is the category of Boolean algebras with operators

(Here we have $PT\cong LP$ only on finite sets.)

If we take instead 
- $T$ to be the double powerset functor, $Coalg(T)$ is the category of neighbourhood frames;
- $\mathcal X$ to be the category of Stone spaces, then $Coalg(T)$ is the category of descriptive general frames;
- $\mathcal A$ to be the category of bounded distributive lattices, we obtain positive modal logic.

So even in the case of classical modal we have already three examples that show how varying the different parameters captures interesting modal logics. Moreover, these parameters can be modified independently of each other, creating quite a large space of possibilities. 

But the main interest in coalgebras stems from the discovery made by Jan Rutten and others, that there is a great variety of functors $T$.

## The coalgebraic approach to modal logic

The coalgebraic approach to modal logic is to expand the landscape of modal logics by systematically extending modal logic to a large variety of functors $T$. 

List some examples ...

## The category theoretic view

The category theoretic approach to coalgebras takes an axiomatic point of view. Clearly, we cannot expect all results of modal logic to survive modifcations of the parameters 
$$\mathcal X,\mathcal A,S,P,L,T$$

On the other hand, the coalgebraic approach has shown that there is indeed a wide variety of instantiations of these parameters that allows us to extend many results of modal logic.

From a category theoretic point of view we can ask the following questions:

- When does a dual adjunction $S\dashv P$ extend to coalgebras/algebras?
- What can we say in the special situation where $S\dashv P$ is an adjunction induced by a dualising object?
- In the special case of the dual adjunction between sets and Boolean algebras, can we axiomatise the functors $T$ for which the classical results of modal logic continue to hold?
- Are there theorems transferring results from the case where $\mathcal A$ is Boolean algebras to the case where $\mathcal A$ is distributive lattices (and classical modal logic to positive modal logic)? Can these results be pushed further to include many-valued logics?
- ..


## References

Jonsson-Tarski

Goldblatt

Abramsky

Bonsangue-Kurz

Kupke-Kurz-Venema

Kurz-Rosicky

Klin

...

to be completed

...

## Further Reading

...



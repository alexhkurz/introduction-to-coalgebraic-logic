---
tags: coalgebraic logic
---
$\newcommand{\sem}[1]{[\![#1]\!]}$

# Semantics of Coalgebraic Logic

(draft) 

We first review the definitions and results that make sense for the general setting of coalgebraic logic.

## Syntax and Semantics

one-step syntax

$$\mathcal A\stackrel L \longrightarrow \mathcal A$$

syntax is the initial algebra

$$LI\longrightarrow I$$

one-step semantics

$$LP\stackrel \delta \longrightarrow PT$$

semantics wrt $X\to TX$

![](https://i.imgur.com/AGBiZjm.png)

For the next result we assume that $\mathcal X$ is a concrete category. Various generalisations to abstract categories are also possible.

**Proposition:** Formulas are invariant under bisimilarity.

*Proof:* Follows from the naturality of $LP \to PT$.

## The Logic Functor Induced by the Coalgebra Functor

The definitions above are parametric in $L$ and $LP\to PT$.

On the other hand, from a coalgebraic point of view, $T$ is given and we should ask how to derive $L$ from $T$.

If $\mathcal A$ is a variety in the sense of universal algebra, then we can define a functor by its action on the free algebras. Moreover, if the variety has a presentation by operations of finite arity, then we can restrict attention to finitely generated free algebras and define $L$ as

$$LFn=PTSFn,$$

where $n$ ranges over finite sets.

(to be continued)





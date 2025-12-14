# Introduction

(under construction ... notes from [hackmd](https://hackmd.io/@alexhkurz/ryrkkYZZc) moved here now)

Coalgebraic logic, in the wider sense of coalgebraic methods applied to (modal) logic, started in the late 1990ies with Larry Moss's article [Coalgebraic Logic](https://www.sciencedirect.com/science/article/pii/S0168007298000426) in which he presented what is today considered one of several coalgebraic logics. In these notes I will take the particular view that a modal or coalgebraic **logic is given by a functor** $L$ on the category of Boolean algebras (or another suitable variety of algebras). 

To distinguish this approach from other approaches to coalgebraic I sometimes call it **functorial modal logic** or functorial coalgebraic logic. 

These notes consist of the following parts.

**Modal Logic** is a very brief introduction to modal logic with pointers to the literature. I will try to write the other parts so that they do not depend too much on Part 1, but it is natural to view coalgebraic logic as an extension and generalisation of modal logic.

**Overview of Coalgebraic Logic** shows how the Kripke frames of  Modal Logic and various models of computation of Domain Theory are unified and generalised by the notion of a coalgebra $X\to TX$ for a functor $T$. We review the various parameters along which the theory of coalgebras can be developed.

**Paradigmatic Examples** could be a good place to start. The examples are  of interest in their own right and have been studied long before coalgebra became a research area. We look in more detail than above at Kripke frames and powerdomains .. add more on probabilistic transition systems and neighbourhood coalgebras.

**Introduction to Coalgebraic Logic** makes use of the concept of a modal logic as a functor mostly as a linguistic device facilitating concise notation. One immediate benefit is that the notion of a *modal algebra* as an algebra $LA\to A$ for a functor $L$ (the ***L***ogic) dualises the notion of coalgebra $X\to TX$ for a functor $T$ (the ***t***ype of the ***t***ransition). In fact, we will see that we can create a logic $L$ from $T$ by dualising $T$ in a technically precise sense (provided by Stone duality and category theory) and then presenting the functor $L$ by modal operators and equations.


**Part 5** on *Functorial Modal Logic* develops the particular category theoretic methods that allow us to reason about coalgebraic models on the level of abstraction of functors and natural transformations, abstracting as much as possible from the concrete definition of a particular logic. These methods can be used to prove general theorems parametric in functors $L$ and $T$ (invariance of formulas under bisimilarity, completeness, expressiveness), are useful to relate different logics and become particularly valuable for moving away from set-based models and classical propositional logic. The connection between **abstract coalgebraic logics** (given by a functor) and **concrete coalgebraic logics** (given by operations and equations) is facilitated by the notion of a **presentation of a functor by operations and equations**.

**Part 6** on **Cospan (Bi)Similarity** presents a new take on the notion of behavioural equivalence (coalgebraic bisimilarity). While it has been known since Worrell's PhD Thesis that one can use cospans (aka collages) to describe coalgebraic similarity in the quantale-enriched setting, we show that the quantale-enriched setting contains behavioural equivalence of ordinary coalgebras as a special case. 

**Part 7** on **Ordered Coalgebras** starts the development of coalgebra over enriched categories. 

**Part 8** will extend **Part 7** to quantale-enriched coalgebra.

**Ordered Coalgebras** starts the development of coalgebra over enriched categories. 

**Quantale-Enriched Coalgebra** ... 


## Acknowledgements

I am grateful to Adriana Balan, Daniel Briseno, Luke Burns, Yiwen Ding, Justin Dressel, Jim de Groot, Helle Hansen, Peter Jipsen, Nima Motamed, Drew Moshier, Wolfgang Poiger, Bruno Teheux, Yde Venema, Jeremy Wayland and others for giving me the opportunity to discuss the content of these notes.

## Bibliography

(just started)

```{bibliography}
```



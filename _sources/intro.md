# Introduction

(...after some pause under construction again...)

Coalgebraic logic, in the wide sense of coalgebraic methods applied to (modal) logic, started in the late 1990ies with Larry Moss's article "Coalgebraic Logic" in which he presented what is today considered one of several coalgebraic logics. In these notes I will take the particular view that a coalgebraic logic (or a modal logic) is given by a functor $L$ on the category of Boolean algebras (or another suitable variety of algebras). To distinguish this approach from other approaches to coalgebraic I sometimes call it functorial modal logic or functorial coalgebraic logic. 

In the first chapters I mostly use the concept of a modal logic as a functor on a variety as a linguistic device facilitating concise notation. Moreover, the notion of a "modal algebra" as an algebra $LA\to A$ for a functor $L$ nicely dualises the notion of coalgebra: Coalgebras $X\to TX$ are dynamic systems given with respect to a type functor $T$ that specifies the type of possible transitions. A logical description of a coalgebra is an algebra $LA\to A$ where $A$ is a propositional logic talking about states in $X$ and $L$ is a functor on Boolean algebras built from the modal operators that allow us to express the dynamic properties of the coalgebra. In fact, we will see that we can create a logic $L$ from $T$ by dualising $T$ in a technical precise sense (provided by Stone duality and category theory) and then presenting the functor $L$ by modal operators and an equational axiomatization of the modal operators.

In the chapter *Functorial Modal Logic* I start to develop the particular category theoretic methods that allow us to reason about coalgebraic models on the level of abstraction of functors and natural transformations, abstracting as much as possible from the concrete definition of a particular logic. These methods can be used to prove general theorems parametric in functors $L$ and $T$ (invariance of formulas under bisimilarity, completeness, expressiveness), are useful to relate different logics and become particularly valuable for moving away from set-based models and classical propositional logic.

( ... I also have a page with various [lecture notes](https://alexhkurz.github.io/teaching-phd-courses.html) and most of my [publications](https://alexhkurz.github.io/publications.html) ... )


## sketches on coalgebraic logic

- [Modal Logic](https://hackmd.io/@alexhkurz/H1zAiN1LO)
- Overview and Background on Coalgebraic Logic
    - [Introduction to Coalgebraic Logic](https://hackmd.io/@alexhkurz/r1t-Y6f8L)
    - Sketch on [The Origins of Coalgebra in Domain Theory](https://hackmd.io/@alexhkurz/ryq8jvZZ5)
    - [The Landscape of Coalgebraic Logic](https://hackmd.io/@alexhkurz/Skc7tOx6F): Varying the parameters.
- Examples
	- [Powerdomains: The Paradigmatic Example](https://hackmd.io/@alexhkurz/r1SJ8lizO)
	- Double Powerdomains: Neighbourhood Semantics  
- Introductions to Coalgebra
	- [Coalgebraic Bisimilarity](https://hackmd.io/@alexhkurz/SJs53demu)
- Introductions to Coalgebraic Logic
	- [Modal Logic as Coalgebraic Logic](https://hackmd.io/@alexhkurz/rJ7UTo788)
	- [Predicate Liftings](https://hackmd.io/@alexhkurz/SJcARPMVO) and  [Monotone PLs](https://hackmd.io/@alexhkurz/Sk4WH_fNd) and [Expressive PLs](https://hackmd.io/@alexhkurz/rkPk_3sNd)
	- [Relation Lifting](https://hackmd.io/@alexhkurz/ByPA9_Juu)
	- [Moss's Coalgebraic Logic](https://hackmd.io/@alexhkurz/rJksR4sso)
- Functorial Modal Logic
    - Introduction to Functorial Modal Logic
    - [Presenting Functors by Operations and Equations](https://hackmd.io/@alexhkurz/ByRlkfCio)
    - Example: [Boolean logic for Set-coalgebras](https://hackmd.io/@alexhkurz/rkWfcZAjs)
	- [Semantics](https://hackmd.io/@alexhkurz/BylEPbhHu)
	- Completeness
	- Expressivity
	- [Functors Presented by Operations and Equations](https://hackmd.io/@alexhkurz/SJVzK6TUI)
	- Translations of Logics
- [Cospan (Bi)Simulation](https://hackmd.io/@alexhkurz/rk4TFb8FP)
	- [Cospan Bisimulation](https://hackmd.io/@alexhkurz/HyQxhrh_v)
	- [Neighbourhood Coalgebras](https://hackmd.io/@alexhkurz/BJfhgfLYv)
	- [Bisimulation for Ordered Coalgebras](https://hackmd.io/@alexhkurz/SJZPcfMdv)
	- [Cospan Bisimulation 2](https://hackmd.io/@alexhkurz/S1IWPOVKv)
- Coalgebraic Logic over Orders
	- [Coalgebras over Preorders](https://hackmd.io/@alexhkurz/H1fd1IIB_)
	- [Examples of Poset-Functors](https://hackmd.io/@alexhkurz/BkSdWhVtP)
	- [Montone Neighbourhood Coalgebras](https://hackmd.io/@alexhkurz/HJM0YyZ_w)
	- [Logic of Ordered Neighbourhood Coalgebras](https://hackmd.io/@alexhkurz/S13JWraOI)
- Colagebraic Logic over Generalized Metric Spaces
    - ...


## Acknowledgements

These notes have been written in discussions with Adriana Balan, Daniel Briseno, Luke Burns, Justin Dressel, Jim de Groot, Helle Hansen, Peter Jipsen, Nima Motamed, Drew Moshier, Wolfgang Poiger, Bruno Teheux, Yde Venema, Jeremy Wayland and others.




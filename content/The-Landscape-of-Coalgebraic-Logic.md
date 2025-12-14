# The Landscape

These notes were prepared for the workshop [Exploring Baltag's Universe](https://soroushrrad.wixsite.com/my-site-1/workshop-1) celebrating [Alexandru Baltag's](https://sites.google.com/site/thealexandrubaltagsite/research/publications) 55th birthday. 

## Introduction

I met Alexandru first in 1997 in the pages of the book "Vicious Circles" by Barwise and Moss, from which I quote the introduction of the section that contains some of the earliest results in the area of coalgebra and modal logic:

![](https://hackmd.io/_uploads/BJpkRix6F.png)

For some time this Alexandru Baltag remained a mythical person.  There was no trace to find of him on the internet, which, even at that time, seemed curious given that he had important theorems to his name. Was he a practical joke of Barwise and Moss? But it wasn't long before Alexandru and I met at [AiML 1998](http://www.aiml.net/conferences/aiml-1998/) and we have been friends ever since. 

The literature on colagebras and modal is considerable, so, on this occasion, I will restrict myself to a (personal and necessarily biased) selection of some of the main ideas. 

Starting from modal logic, one can see a development of subsequent generalisations and specialisations, each move adding to the theory of coalgebraic logic a new dimension, or parameter, along which the general framework can be adjusted in a compositional and uniform manner in order to take into account various modelling requirements.

The starting point of modern research into coalgebras was Aczel's "Non-Wellfounded Set Theory" from 1988, which not only had a direct influence on "Vicious Circles", but also showed (amongst other discoveries) that the notion of bisimilarity well-known in modal logic and concurrency theory generalises to coalgebras for a functor. We will denote this functor by $T$ (for transition type).

One question raised by Aczel's discovery was whether the many important results in modal logic and in concurrency have generalisations to arbitrary functors $T$. This was the first dimension of coalgebraic logic and is the starting point for what follows.


## Dimensions of Coalgebraic Logic

In the talk I sketched a three dimensional picture. One axis had the functor $T$ (the type of transitions, eg non-determinstic, probabilistic, etc), a second axis had the modal theory,  a third one had the base category. This axes, or dimensions, appear in red below (and there are more than three). 

We start from modal logic, thinking of a class of Kripke frames axiomatized by a modal theory. Generalising from Kripke frames to $T$-coalgebras, we also need to generalise the standard modal operators $\Box$ and $\Diamond$. There are two ways to do this known as Moss's $\nabla$ and as Pattinson's predicate liftings.

Next one can ask what can be done in case of a general base cateagory $\mathcal C$. Dualising the Lawvere-Linton account of algebra over a general base category one is lead to a theory of "modal predicate transformer", that is, predicate transformers preserving coalgebraic bisimilarity.

But over a general base category, we have no handle on the syntax of the logic. To improve on this, one can specalise to categories $\mathcal C$ that have a Stone dual $\mathcal A$. A modal logic for coalgebras for $T:\mathcal C\to\mathcal C$ is then given by a functor $L:\mathcal A\to\mathcal A$.

---

I summarise this development by describing an <font color=blue>object of study</font> and its  <font color=red>mathematical formalisation</font>

> followed by a move 


leading to a new <font color=blue>object of study</font> and a new  <font color=red>mathematical formalisation</font>.

---

<font color=blue>Classical modal logic.</font>
Parameter: <font color=red>Theory $\Lambda$</font>.

> Generalise Kripke frames to $T$-coalgebras.

<font color=blue>Moss's Coalgebraic Logic, Pattinson's predicate liftings.</font>[^mosspattinson]
Parameter: <font color=red> Functor $T$</font>. [^rankone] [^composingfunctors]

> Generalise to arbitrary base categories $\mathcal C$.

<font color=blue>Predicate transformers $\mathcal C(-,n)\to \mathcal C(-,m)$.</font> [^predicatetransformers] 
Parameter: <font color=red>Category $\mathcal C$.</font>[^category] [^category2]

> Specialise to categories $\mathcal C$ that have a Stone dual $\mathcal A$.

<font color=blue>Basic modal logic as a functor $L:\mathcal A\to\mathcal A$.</font>
Parameter: Adjunction <font color=red>$Spec \dashv Pred: \mathcal C^{op}\to \mathcal A$.</font> [^adjunction]

> Generalise to enriched adjunctions.

<font color=blue>Basic modal logic as a functor $L:\mathcal A\to\mathcal A$.</font>
Parameter: <font color=red>Enrichment</font>. [^enrichment]

> Specialise to a quantale $\Omega$ of truth values.

<font color=blue>Basic modal logic as a functor $L:\mathcal A\to\mathcal A$.</font>
Parameter:  <font color=red>Lattice $\Omega$ of truth values</font>. [^quantale]

---

**Remark on Rank 1 Axioms:** While $T$-coalgebras generalise Kripke frames, $L$ generalises the corresponding basic modal logic. Note that the axioms of basic modal logic such as $\Box (a\to b)\to \Box a \to \Box b$ are special in the sense that they are of "rank 1", that is, every propositional variable is in the scope of exactly one modal operator. While this does not prevent us from adding more general axioms, rank 1 axioms are special because they can be accounted for by a functor. [^monad] Since functors allows us to apply special methods such as the final coalgebra and the initial algebra sequence, it can sometimes be useful to study a logic by separating out its rank 1 fragment. This technique was pioneered by Ghilardi, see eg [Bezhanishvili, Ghilardi and Jibladze](https://staff.fnwi.uva.nl/n.bezhanishvili/Papers/Bezh-Ghi-Jib-Revised.pdf) for an overview and further references.

**Remark on Deriving Canonical Parameters from the Lattice of Truth Values:** Work on the lattice $\Omega$ of truth values as a parameter is ongoing (with Jiri Velebil and Adriana Balan). One question is how a choice of $\Omega$ determines a "canonical" Stone type adjunction which in turn determines a "canonical" logic (given concretely in terms of operations and proof system).

**Summary of the Design Space of Coalgebraic Logic:** Choose 
- the lattice of truth values $\Omega$, 
- a base category $\mathcal C$ of state spaces, 
- a functor $T:\mathcal C\to\mathcal C$ of transition types, 
- a Stone type adjunction $Spec \dashv Pred: \mathcal C^{op}\to \mathcal A$ for a propositional logic
- a functor $L:\mathcal A\to\mathcal A$ for a modal expansion, 
- a theory $\Lambda$ of $L$-formulas. [^designspace]

**Additional "Non-Category Theoretic" Dimensions:** In this presentation I concentrated on parameters that have category theoretic representations as categories, functors, adjunctions or enrichements. There are further dimensions one can add. For example: [Kupke and Venema](https://staff.science.uva.nl/y.venema/papers/catbr.pdf) add winning conditions to automata-as-$T$-coalgebras in order to give semantics to a *coalgebraic $\mu$-calculus*; [Litak, Pattinson, Sano and Schr&ouml;der](https://lmcs.episciences.org/4390) develop  *coalgebraic  predicate logic*. [Pattinson and Schr&ouml;der](https://users.cecs.anu.edu.au/~dpattinson/Publications/ic2010.pdf) investigate the *proof theory of coalgebraic logics*; [Gorín etal](https://users.cecs.anu.edu.au/~dpattinson/Publications/ijcar2014.pdf) build generic software tools paramaterised by $T$.

See also the survey paper [Modal logics are coalgebraic](https://users.cecs.anu.edu.au/~dpattinson/Publications/cj2011.pdf). Comput. J., 2011.


## Acknowledgements

I thank Alexandru Baltag, Nick Bezhanishvili and Nima Motamed for their questions and comments.

## References

Coalgebraic logic draws on many influences. To mention just a few: Aczel in set theory; Goldblatt, van Benthem, Ghilardi in modal logic; Scott, Plotkin, Abramsky in domain theory; Johnstone on Stone duality. Coalgebras started to move into the mainstream of computer science with work by Jacobs and Rutten and the CMCS workshops the first of which took place in 1998. 

In the following, I only list the work which I had time to mention in the presentation (but see also the references linked in the text above).

- Baltag's Theorems in Barwise and Moss, *Vicious Circles*, 1996.
- Lawrence Moss: Coalgebraic Logic. 1997.
- Alexandru Baltag. "A Structural Theory of Sets", AIML 1998.
- Dirk Pattinson: Coalgebraic modal logic: soundness, completeness and decidability of local consequence. Theor. Comput. Sci. 309(1-3): 177-193 (2003)
- Alexander Kurz, Jirí Rosický: Operations and equations for coalgebras. Math. Struct. Comput. Sci. 15(1): 149-166 (2005)
- Clemens Kupke, Yde Venema: Coalgebraic Automata Theory: Basic Results. Log. Methods Comput. Sci. 4(4) (2008)
- Alexander Kurz, Jirí Rosický: Strongly Complete Logics for Coalgebras. Log. Methods Comput. Sci. 8(3) (2012)
- Alexander Kurz, Jiri Velebil: Enriched Logical Connections. Appl. Categorical Struct. 21(4): 349-377 (2013)
- 	Fredrik Dahlqvist, Alexander Kurz: The Positivication of Coalgebraic Logics. CALCO 2017
- Adriana Balan, Alexander Kurz, Jiri Velebil: Extending set functors to generalised metric spaces. Log. Methods Comput. Sci. 15(1) (2019)
- Adriana Balan, Alexander Kurz: An equational approach to enriched distributivity. CoRR abs/2112.13290 (2021)


[^mosspattinson]: Moss and Pattinson show in different ways that one can retain some control over the syntax and stay parametric in $T$. A chosen set of predicate liftings can be considered another parameter. This is similar to choose a basic set of operations when defining categories of algebras.

[^rankone]: Some axioms, so called axioms of rank 1, can be incorporated in $T$, but general axioms (such as transitivity)  live on in their own dimension (the parameter of modal theories).

[^composingfunctors]: Composing functors is compositional, as is composing their logics. (It is well-known in the semantics of programming languages that there are problems composing the monads for non-determinism and probability, but here we only compose functors. See [(Goy and Petrisan, 2020)](https://hal.archives-ouvertes.fr/hal-02564365/document) for a recent work on composing the monads.)

[^predicatetransformers]: Naturality of the predicate transformers guarantess that they are invariant under coalgebraic bisimilarity. 

[^category]: One might say that the functor $T:\mathcal C\to\mathcal C$ is just one parameter comprising both $\mathcal C$ and $T$, but one can extend functors along varying $\mathcal C$. For example, the powerset functor on sets extends to the convex powerset functor on posets, to the Vietoris functor on Stone spaces, to the Plotkin powerdomain on domains, to the Hausdorff metric for metric spaces, etc.

[^category2]: Changing the base category can be used to model a variety of different phenomena. Partially ordered sets can be used to weaken bisimulation to simulation. Categories of algebras can be used to equip coalgebras (seen as automata) with internal memory. Categories such as nominal sets (and various presheaf categories) can be used to treat binding and local store. Measurable spaces are useful for probabilistic transition systems. Starting from a given logic, categories of topological spaces (such as Stone spaces) can be used to obtain coalgebraic semantics that is dually equivalent to the corresponding algebraic semantic. Categories of domains can be used to obtain solutions for mixed variance domain equations and build models for the untyped lambda calculus.

[^adjunction]: The adjunction can be varied to put different logics into the same picture. For example, starting from Sets, one my use boolean algebras or complete atomic boolean algebras as the semantics. One may also want to drop negation or only retain conjunction. On the other hand, starting from, say Boolean algebras, one may want to topologise the semantic side and consider Stone spaces.

[^enrichment]: Enrichment is useful to enrich the notion of bismilarity. For example, order enriched category theory deals with simulations and metric-space enriched category deals with metric bisimulations. 

[^quantale]: A quantale $\Omega$ determines a "multi-ordered set" ($\Omega$-enriched category) with an order for each element of the quantale and composition of orderes governed by the multiplication of the quantale. Metric spaces are a special case of multi-ordered sets. The category of multi-ordered sets ($\Omega$-enriched categories) then serves as the base category $\mathcal C$ over which one takes $T$-coalgebras. 

[^designspace]: Some comments on the design space of coalgebraic logic.
    - The quantale $\Omega$ determines a (residuated) lattice of truth values and a multi-order (metric) on the state space. 
    - The base category $\mathcal C$ can add topological structure and/or algebraic structure. Topological structure can be used to designate definable/observable sets of states. Algebraic structure can be used to add memory to states. 
    - The functor $T:\mathcal C\to\mathcal C$ chooses the "computational effects" of interest, which can include combinations of input/output, non-determinism, probability and more. Some computational effects (such as variable binding and function space or continuous probability) require base categories $\mathcal C$ with special properties while others (such as powerset) can be varied uniformly over a range of base categories.  
    - $T$ determines the notion of bisimilarity (observational equivalence, behavioural equivalence) of interest. 
    - The logic $L$ can either be obtained as the Stone dual of $T$ or created in an adhoc fashion to suit particular modelling requirements. 
    - Various "bells and whistles" can be added.
    
[^monad]: While monads provide a means to account for general theories functors account onky for rank 1.
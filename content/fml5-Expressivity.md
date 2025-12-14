# Expressivity

(not even draft)

...

**Definition:** A coalgebraic logic is **expressive** if for any two non-bisimilar states there is a formula distinguishing them.

...

## References

{cite}`pattinson:expressive` introduces the notion of a *separating set of predicate liftings* and uses induction along the terminal coalgebra sequence, based on work by {cite}`worrell:terminal-sequence:cmcs,worrell:final-sequence`, to show that if $T:Set\to Set$ is finitary (or $\kappa$-accessible) and the set of predicate liftings is separating then the coalgebraic logic generated from the predicate liftings, finitary ($\kappa$-ary) conjunctions and negation is expressive.

{cite}`schroder:expressivity:fossacs,schroder:expressivity` showed that the logic of all predicate liftings is expressive for any finitary functor $T:Set\to Set$.

{cite}`klin:expressivity:mfps` showed that the proofs of Pattinson and Schröder can be done at the level of abstraction of functorial modal logic if the mate of the semantics $\delta$ is mono. Klin's method generalizes beyond sets and Boolean algebras and {cite}`jacobs-sokolova:expressivity` provide a number of concrete examples of how it can be applied to various dynamical systems and their logics.

{cite}`kapulkin-etal:expressiveness:aiml` shows that the logic of all monotone predicate liftings is expressive for every finitary, locally monotone, embedding-preserving poset-functor. 

{cite}`bilkova-dostal:expressivity-many-valued` studies the expressivity of many-valued logics for set-coalgebras given by predicate liftings.

...

## References

{cite}`pattinson:expressive` introduces the notion of a *separating set of predicate liftings* and uses induction along the terminal coalgebra sequence, based on work by {cite}`worrell:terminal-sequence:cmcs,worrell:final-sequence`, to show that if $T:Set\to Set$ is finitary (or $\kappa$-accessible) and the set of predicate liftings is expressive then the coalgebraic logic generated from the predicate liftings, finitary ($\kappa$-ary) conjunctions and negation is expressive.

{cite}`schroder:expressivity:fossacs,schroder:expressivity` showed that the logic of all predicate liftings is expressive for any finitary functor $T:Set\to Set$.

{cite}`klin:expressivity:mfps` showed that the proofs of Pattinson and Schr{\"o}der can be done at the level of abstraction of functorial modal logic using if the mate of the semantics $\delta$ is mono. Klin's method generalizes beyond sets and Boolean algebras and {cite}`jacobs-sokolova:expressivity` provide a number of concrete examples of how it can be applied to various dynamical systems and their logics.
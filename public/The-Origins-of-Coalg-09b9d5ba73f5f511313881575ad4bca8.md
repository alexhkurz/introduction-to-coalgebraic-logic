---

# Origins in Domain Theory

(sketchy draft ... references to be added) 

The theory of coalgebras in computer science can be traced back to Scott's work in the 1970ies on domain theory. In this setting, it often happens, and later was sometimes taken to be axiomatic, that initial algebras and final coalgebras coincide. More explicitely, given a category $\mathcal C$ of domains and a type constructor (= functor) 

$$T:\mathcal C\to \mathcal C$$

the initial $T$-algebra and the final $T$-coalgebra are isomorphic and we can take either one as the solution to the domain equation

$$X\cong TX.$$

Scott had shown the importance of such solutions to the the theory of programming languages by constructing a domain for lambda calculus solving the equation $X\cong X^X$. This required a sophistocated construction of the base category $\mathcal C$. Researchers soon realised that this method is very powerful and can be applied to a variety of functors $T$ and categories $\mathcal C$. In particular, Scott's method is also of great interest in situations that are simpler than the one that arises in the semantics of lambda calculus.

For example, the theory of algebraic data types largely concerns itself with polynomial functors $T$ on the category of sets. Nevertheless, initial algebra semantics, as developed in the 1980ies and 90ies, is a powerful tool with many applications to programming languages. 

An important observation is that for most categories, contrary to what happens in Scott's original setting, initial algebra semantics and final coalgebra semantics fall apart. It was only in the 1990ies that researchers gradually became aware that in such situations the final coalgebra semantics is at least as important for applications to programming languages as the initial algebra semantics.

Roughly speaking, the relationship between initial algebra and final coalgebra semantics is as follows. From the universal properties of inital algebra and final coalgebra it follows that there is a unique arrow

$$I\to Z$$

from the initial algebra $TI\to I$ to the final coalgebra $Z\to TZ$. Intuitively the initial algebra is the algebra of finite terms, while the final coalgebra is the coalgebra of infinite terms. Finite terms are important to model data and programs. Infinite terms are important to model program behaviour, in particular non-terminating computations.

(to be continued)
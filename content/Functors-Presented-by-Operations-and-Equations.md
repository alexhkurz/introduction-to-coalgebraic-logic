# Functors presented by operations and equations

(under construction ... [up](https://hackmd.io/@alexhkurz/ryrkkYZZc) )

## Example: Functors on Distributive Lattics

1. $DL$ is a variety and, as all varieties, has a presentation by operations and equations.

2. **Presentations by operations and equations** of functors $L$ on a variety were introduced by [(Bonsangue and Kurz, 2006, Definition 6)](https://alexhkurz.github.io/papers/Fossacs06/fossacs06.pdf), generalising the notion of presentation for $Set$-functors as quotients of polynomial functors. The reason to introduce this notion was to show that 
   - the category of L-algebras has a presentation by operations and equations that is obtained in modular way from the presentation of the variety and of the functor [(Theorem 5)](https://alexhkurz.github.io/papers/Fossacs06/fossacs06.pdf);
   - presentations of functors L on a variety correspond, via Stone duality, to logics for coalgebras [(Diagram (4), Theorem 27)](https://alexhkurz.github.io/papers/Fossacs06/fossacs06.pdf).

3. Varieties are, in particular, locally finitely presentable (lfp). (The finitely presentable objects are exactly the finite $DL$s.) That $DL$ is lfp means that every $DL$ is a filtered colimit of finite $DL$s. This result can also be phrased by saying that the inclusion of finitely presentable $DL$s

$$DL_{fp}\to DL$$

   is dense and that filtered colimits are a density presentation of this inclusion.
  
    - **Theorem** [(Kelly and Power, 1993)](https://www.sciencedirect.com/science/article/pii/0022404993900928): Filtered colimit preserving functors on $DL$ are precisely those that have a presentation as a coqualiser of polynomial functors.
    - The theorem is actually much more general as it applies not only to $DL$ but to all categories that are lfp, or even those that are lfp in the enriched sense.
    - While this theorem is beautiful and very general, it has, for our purposes, the disadvantage that the **category of arities**, that is, the category $DL_{fp}$, is too big: We are not interested in presenting functors $L$ by operations that have distributive lattices as arities. We are only interested in operations that have arities in the usual sense, that is, arities that are *finite sets*, or, briefly, **discrete arities**.
    - The solution, then, is to work with a density presentation of the free functor  $Set_{fin}\to DL$, or, equivalently, with a density presentation of the functor $DL_{fgf}\to DL$, where $DL_{fgf}$ is the category of finitely generated free algebras.
  
4. Let $DL_{fgf}$ be the category of **finitely generated free** $DL$s. Then the (ordinary) inclusion

$$DL_{fgf}\to DL$$

   is dense and filtered colimits and reflexive coequalisers are a density presentations.
   
   - **Theorem** [(Kurz and Rosicky, 2012, Theorem 4.7)](): The functors on $DL$ that preserve filtered colimits and reflexive coequalisers are precisely those that have a presentation by finitary operations and equations.
   - This theorem applies to all one-sorted varieties in the sense of universal algebra. 
     - A many-sorted generalisation was given in [(Kurz and Petrisan, 2010, Theorem 3.5)](https://alexhkurz.github.io/papers/cmcs08-j.pdf). 
     - A further generalisation to enriched categories is in [(Velebil and Kurz, 2011, Theorem 3.18)](https://alexhkurz.github.io/papers/velebil-kurz-mscs2011.pdf).

5. The results in [(Velebil and Kurz, 2011)](https://alexhkurz.github.io/papers/velebil-kurz-mscs2011.pdf) also apply when we consider $DL$ as an **ordered variety**, that is, we turn our attention from the forgetful functor $DL\to Set$ to the forgetful functor $DL\to Pos$. This has the following consequences.
   - Representing a functor $L:DL\to DL$ now means to represent it by *monotone operations* (because we work order enriched).
   - $DL_{fgf}$ refers to the category of distributive lattices that are free over *finite posets* (because we consider $DL\to Pos$). 
   - In other words, being finite posets, arities are not necessarily discrete anymore. This would mean going beyond operations and equations in the sense of universal algebra, which we want to avoid here.
  
   What modifications to the setting of [(Velebil and Kurz, 2011)](https://alexhkurz.github.io/papers/velebil-kurz-mscs2011.pdf) are needed to get an account of functors that have presentations by finitary monotone operations in discrete arities?
  
6. [(Kurz and Velebil, 2017)](https://alexhkurz.github.io/papers/Ordered-algebras.pdf) combines the approaches of 4. and 5. above by considering the inclusion

$$DL_{fgf}\to DL$$

   as a Poset-enriched functor. This corresponds to restricting to *discrete* arities (as in 4.) and to *monotone* operations (as in 5.). 
   - **Theorem:**  [(Kurz and Velebil, 2017, Proposition 6.8)](https://alexhkurz.github.io/papers/Ordered-algebras.pdf) A functor between ordered varieties has a presentation by monotone operations (in discrete arities) and equations iff it is finitary and preserves surjections.
   
**Question:** The two theorems now look the same on ordered varieties where the order is equationally definable: Preservation of filtered colimits and surjections ... but one should give all presentations and the other only the monotone ones.
   
7.  [(Balan etal)]() ...

8.  [(Dahlqvist and Kurz)]() ... 




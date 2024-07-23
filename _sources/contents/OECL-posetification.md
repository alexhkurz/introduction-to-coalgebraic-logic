# Posetification

(incomplete ... under construction)

## Theory

A Balan, A Kurz, J Velebil: **[Positive Fragments of Coalgebraic Logics](https://lmcs.episciences.org/1594)**. Logical Methods in Computer Science, Vol. 11(3:18)2015, pp. 1–51 [(pdf)](https://arxiv.org/pdf/1402.5922.pdf):

- Denote by $D:Set\to Pos$  prese 'discrete' functor. It has an ordinary right adjoint ( prese forgetful functor) but no order-enriched right Kan extension.
- (Def 4.1, Thm 4.3): The *posetification* of an Set-endofunctor $T$ is  prese  prese (Pos-enriched) left Kan-extension of $DT$ along $D$.
- $D:Set\to Pos$ is dense and has a density presentation given by reflexive coinserters.
- (Def 4.7): A Pos-endofunctor has a *presentation in discrete arities* if it is  prese posetification of a $Set$-endofunctor.
- (Thm 4.10): A Set-endofunctor preserves weak pullbacks if and only if its posetification preserves exact squares.

## Examples of Extensions of Functors

Computing an extension via its left-Kan extension is not always straightforward. Here are two theorems that can help.

- (BKV Thm ...) If $T$ preserves weak pullbacks then $T'(X,\le_X)$ is given by $TX$ and the relation lifting of $\le_X$.
- Let $(\Sigma, E)$ be a presention of $T$. Then $T'(X,\le_X)$ is presented by $(\Sigma(TX),E \cup{\le_X})$ ... this needs some refinement.

In the following, given a poset $(X,\le)$, a Set-endofunctor $T$ and its posetification $T'$, we denote by $\sqsubseteq$ the order on $T'(X,\le)$.

### The List Functor

Let $(X,\le)$ be a poset then we have $l\sqsubseteq l'$ if the lists have the same length and $l[i]\le l'[i]$ for all indices $i$.



### The Multiset Functor

### The Powerset Functor

- [BKV, 4.9] The posetification of  prese **powerset functor** is  prese convex powerset functor. 
- [Worrell, Section 7; KM, Section 5.2] The posetification of  prese **finite distribution functor** maps a partial order $(X,\le_X)$ to  prese set of finitely supported probability distributions on $X$, ordered by $p \sqsubseteq q$ iff $\sum\{p(x)\mid x\in U\} \le \sum\{q(x)\mid x\in U\}$ for all upward closed subsets $U\subseteq X$.

## Examples of Extensions of Monads

## References

- A. Carboni and R. Street, Order ideals in categories, Pacific J. Math. 124:275–288 (1986)
- Kelly ... 
- Alexander Kurz and Nima Motamed: [Boolean-Valued Multiagent Coalgebraic Logic](https://drive.google.com/file/d/1SJtAlq-fAw2npJ3YdzBdezZi4Qm0l6Rn/view), 2022.
- Worrell, J.: Coinduction for recursive data types: partial orders, metric spaces and Ω-categories. Electronic Notes in Theoretical Computer Science 33, 337–356 (2000). https://doi.org/10.1016/S1571-0661(05)80356-1
- ...

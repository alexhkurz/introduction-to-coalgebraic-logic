# Posetification

(incomplete ... under construction)

## Theory

A Balan, A Kurz, J Velebil: **[Positive Fragments of Coalgebraic Logics](https://lmcs.episciences.org/1594)**. Logical Methods in Computer Science, Vol. 11(3:18)2015, pp. 1–51 [(pdf)](https://arxiv.org/pdf/1402.5922.pdf):

- Denote by $D:Set\to Pos$  the 'discrete' functor. It has an ordinary right adjoint (the forgetful functor) but no order-enriched right Kan extension.
- (Def 4.1, Thm 4.3): The **posetification** of a Set-endofunctor $T$ is the (Pos-enriched) left Kan-extension of $DT$ along $D$.
- Let $X$ be a poset with carrier $X_0$ and order $X_1$. The coinserter given by the projections $\pi_1,\pi_2:DX_1\to DX_0$, $\pi_1\le\pi_2$,  is called the **nerve** of the poset $X$.
- $D:Set\to Pos$ is dense and has a density presentation given by nerves of posets.
- (Def 4.7): A Pos-endofunctor has a **presentation in discrete arities** if it is the posetification of a $Set$-endofunctor.
- (Thm 4.10): A Set-endofunctor preserves weak pullbacks if and only if its posetification preserves exact squares.
- The posetification of a functor $T:Set\to Pos$ is the left Kan extension of $T$ along $D$.
- ...


## Examples of Extensions of Functors

Computing an extension via its left-Kan extension is not always straightforward. Here are two theorems that can help.

- (BKV Thm ...) If $T$ preserves weak pullbacks then $T'(X,\le_X)$ is given by $TX$ and the relation lifting of $\le_X$.
- Let $(\Sigma, E)$ be a presention of $T$. Then $T'(X,\le_X)$ is presented by $(\Sigma(TX),E \cup{\le_X})$ ... this needs some refinement.

In the following, given a poset $(X,\le_X)$, a Set-endofunctor $T$ and its posetification $T'$, we denote by $\sqsubseteq$ the order on $T'(X,\le_X)$.

### The List Functor

We have $l\sqsubseteq l'$ if the lists have the same length and $l[i]\le_X l'[i]$ for all indices $i$.

One can relax the requirement that the lists have the same length if one considers the list-functor as a functor $Set\to Pos$ and equips the image with the prefix order (or the consverse of the prefix order).

### The Multiset Functor

### The Powerset Functor

- [BKV, 4.9] The posetification of  prese **powerset functor** is  prese convex powerset functor. 
- [Worrell, Section 7; KM, Section 5.2] The posetification of  prese **finite distribution functor** maps a partial order $(X,\le_X)$ to  prese set of finitely supported probability distributions on $X$, ordered by $p \sqsubseteq q$ iff $\sum\{p(x)\mid x\in U\} \le \sum\{q(x)\mid x\in U\}$ for all upward closed subsets $U\subseteq X$.

## Examples of Extensions of Monads

In this section we ask the questions whether the posetification of a monad is a monad.

...

## References

- A. Carboni and R. Street, Order ideals in categories, Pacific J. Math. 124:275–288 (1986)
- Kelly ... 
- Alexander Kurz and Nima Motamed: [Boolean-Valued Multiagent Coalgebraic Logic](https://drive.google.com/file/d/1SJtAlq-fAw2npJ3YdzBdezZi4Qm0l6Rn/view), 2022.
- Worrell, J.: Coinduction for recursive data types: partial orders, metric spaces and Ω-categories. Electronic Notes in Theoretical Computer Science 33, 337–356 (2000). https://doi.org/10.1016/S1571-0661(05)80356-1
- Dahlqvist, Fredrik ; Kurz, Alexander: <b><a
    href="http://drops.dagstuhl.de/opus/volltexte/2017/8042/pdf/LIPIcs-CALCO-2017-9.pdf">The Positivication of Coalgebraic Logics.</a></b> CALCO 2017

- ...

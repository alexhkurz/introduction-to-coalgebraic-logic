# Cospan Bisimulation: Overview

(draft) 

These notes have been collected from various sources and do overlap quite a bit. Some streamlining should be done when time permits.

---

- [Cospan Bisimulation](./csp1-Cospan-Bisimulation.md) ([formerly](https://hackmd.io/@alexhkurz/HyQxhrh_v)) **suggests that cospan bisimulation is a better behaved alternative than tradiditional span bisimulation**. It relies on the notion of posetification of a functor in order to apply Worrell's cospan bisimulation for quantale-enriched coalgebras also to set coalgebras. 

- [Bisimulation for Ordered Coalgebras](csp2-Bisimulation-for-Order-Enriched-Coalgebras.md) ([formerly](https://hackmd.io/@alexhkurz/SJZPcfMdv)) recalls Worrell's cospan bisimulations. This section presents various example of ordered coalgebras, with an emphasis on ordered neighbourhood coalgebras.

- [Neighbourhood Coalgebras](./csp3-Neighbourhood-Coalgebras.md) ([formerly](https://hackmd.io/@alexhkurz/BJfhgfLYv)) and [Monotone Neighbourhood Coalgebras](./csp3b-Monotone-Neighbourhood-Coalgebras.md) ([formerly](https://hackmd.io/@alexhkurz/HJM0YyZ_w)) are standard examples of coalgebras for which span bisimulations fail to fully account for bisimilarity. We review some of the literature on this topic from the point of view of cospan bisimulation.

- [Logic of Ordered Neighbourhood Coalgebras](./csp3c-Logic-of-Ordered-Neighbourhood-Coalgebras.md) ([formerly](https://hackmd.io/@alexhkurz/S13JWraOI)) reviews the connection with modal logic. This section can be skipped. 

- [Cospan Bisimulation 2](./csp4-Cospan-Bisimulation-2.md) ([formerly](https://hackmd.io/@alexhkurz/S1IWPOVKv)) lays out some of the basic results relating span and cospan (bi)simulation. In particular, **every span bisimulation is a cospan bisimulation and the converse holds for weak pullback preserving functors**.

- *Doctrinal Adjunction* reviews some category theory about lifting of functors from a base adjunction to coalgebras. These results are used in Section [Cospan Bisimulation 2](./csp4-Cospan-Bisimulation-2.md).

- *Exact Squares* contain the beginning of a review of the histroy of exact squares. This material is not relevant for our present purposes, but should be expanded at some later point. Can be skipped.

**Questions:** More examples? More theorems? Is this just a nice observation or is there something new we can do with this? Maybe connect it with logic induced bisimulations? There are more technical questions at [Cospan Bisimulation 2](./csp4-Cospan-Bisimulation-2.md). 

## Summary of Bisimulations

Let $T:Ord\to Ord$ be a functor and $\xi:X\to TX$ and $\nu:Y\to TY$ and $R\subseteq X\times Y$. 

$R$ is a cospan-(bi)simulation iff $xRy$ satisfies the conditions below for all $x\in X$ and $y\in Y$.

---

$$T=\overline{2^{2^-}}$$


\begin{gather}
\forall a\in\xi(x).\exists b \in \nu(y). (\forall x\in a.\exists y\in b. xRy) \ \& \ (\forall y\in b.\exists x\in a. xRy)\\[1ex]
\forall b\in\nu(y).\exists a \in \xi(x). (\forall x\in a.\exists y\in b. xRy) \ \& \ (\forall y\in b.\exists x\in a. xRy)
\end{gather}

---

$$T=\overline{Up\mathcal P}$$

\begin{gather*}
\forall a\in\xi(x)\,.\,\exists b\in\nu(y)\,.\,\forall y\in b\,.\,\exists x\in a\,.\, xRy\\ 
\forall b\in\nu(y)\,.\,\exists a\in\xi(x)\,.\,\forall x\in a\,.\,\exists y\in b\,.\, xRy
\end{gather*}

---

$$T=\mathcal D\mathcal U$$

\begin{align}
\forall a\in\xi x.\exists b\in\nu y. \forall y\in b.\exists x\in a.\ xRy 
\end{align}

---

$$T=\mathcal U\mathcal D$$

\begin{align}
\forall b\in\nu y.\exists a\in\xi x. \forall x\in a.\exists y\in b.\  xRy 
\end{align}


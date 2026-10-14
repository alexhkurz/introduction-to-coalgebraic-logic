
# Examples of Poset-Functor

(draft ... references to be added)

## Introduction

Ideally, coalgebraic logic over posets should follow the same lines as coalgebraic logic over sets. Just replace the category $\sf Set$ everywhere by the category $\sf Ord$ of ordered sets (posets or preorders) and order-preserving (aka monotone) maps.

Really many new phenomena arise. One general interesting question is how much knowledge we can transfer from set-coalgebras to poset-coalgebras in a systematic way.

One approach to answer this question is to study relationships between set and poset-functors systematically. So let us start by recalling the notion of an [order-extension](https://hackmd.io/jxfudz7SQpmj5BzZkyWZIA?both#Order-Extensions) (posetification, preordification) $T'$ of a set functor $T:\sf Set\to Set$.

## Functors on Posets

**Powerset:** Let $T=\mathcal P$ be the powerset functor. There are the following three extensions to $Pos$-enriched functors.

- $\mathcal D$ with $\mathcal DX=[X^o,2]$ on objects. For $f:X\to Y$, one defines $\mathcal Df:[X^o,2]\to [Y^o,2]$ as the left Kan extension of $Yon_Y\circ f$ along $Yon_X$. 
- $\mathcal UX= (\mathcal DX^o)^o$.
- $\mathcal P$ is the convex powerset.

**Double Powerset:** 

![](https://i.imgur.com/HhM5Qbw.png)

## ...
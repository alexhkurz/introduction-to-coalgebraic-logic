# Relation Lifting

(draft)

Extending a functor from functions to relations is important to coalgebra for at least two reasons. Relation lifting can be used to define bisimulations and also to define Moss's coalgebraic logic. In the latter case, the idea is to apply the lifted functor to the satisfiability relation.

Relation lifting can be defined in at least two ways, via spans and via cospans. In both cases the idea is to first represent a relation by a pair of arrows, and then to apply the functor to these arrows.

In the following let $\sf Rel$ be the category which has sets as objects and relations as arrows.

## Span-Based Relation Lifting

The idea of the span-based relation lifting of a functor $T$ is to "tabulate" a relation $R$ by a span $X\stackrel p \leftarrow R\stackrel q\rightarrow Y$ and then to apply the functor $T$ to the projections, obtaining $TX\stackrel {Tp} \longleftarrow TR\stackrel {Tq}\longrightarrow TY$.

**Definition:** Let $T:\sf Set\to Set$ and $X\stackrel p \leftarrow R\stackrel q\rightarrow Y$ be a relation. Then 

$$\overline T:\sf Rel\to Rel$$ 

is the relation given by 

$$\overline TR = \{(a,b) \in TX\times TY \mid \exists w\in TR\,.\, Tp(w)=a \ \& \ Tq(w)=b\}$$

**Remark:** This formulation is specific to set-functors, but can be generalised to other base categories.

**Fact:** $\overline T$ preserves composition (and therefore is a functor on $\sf Rel$) if $T$ preserves weak-pullbacks.

**Example/Exercise:** Let $\mathcal P$ be the powerset functor. It is an interesting exercise to check that $(a,b)\in \overline{\mathcal P}X$ iff
\begin{gather}
\forall x\in \mathcal a\,.\, \exists y\in b\,.\,xRy \\
\forall y\in \mathcal b\,.\, \exists x\in a\,.\,xRy \\
\end{gather}

**Fact:** $\overline {\mathcal P} : \sf Rel \to Rel$ is a functor. If $R$ is a partial order then $\overline {\mathcal P}R$ is a partial order. 

## Extending Set-Functors to Ordered Sets

The cospan-based relation lifting starts from the cotabulation (or collage) of a relation $R$ by a cospan $X\stackrel j \rightarrow \mathbf R\stackrel k\leftarrow Y$, where $\mathbf R$ is an order on the disjoint union $X+Y$ given by $(u,v)\in\mathbf R$ iff $u=v\in X$ or $(u,v)\in R$ or $u=v\in Y$.

Thus, in order to apply a set-functor $T$ to $j$ and $k$, we need extend $T$ from sets to orders. This follows the same idea as the relation lifting in the previous section, but now one closes under reflexivity and transitivity (and quotients by anti-symmetry in the case one works with posets).

**Definition:** Let $(X,\le)$ be a pre-order. Write $X\stackrel p \leftarrow {\le}\stackrel q\rightarrow X$ for the two projections. Then $\widetilde T (X,\le)$ has carrier $TX$ and the order on $\widetilde T(X,\le)$

is the smallest order containing 

$$\{(a,b) \in TX\times TX \mid \exists w\in T(\le)\,.\, Tp(w)=a \ \& \ Tq(w)=b\}.$$

This defines a functor 

$$\widetilde T:\sf Ord\to Ord$$

where $\sf Ord$ can be preorders or posets.

**Remark:** The surjection $\ TX\stackrel s \to \widetilde T (X,\le)$ has a universal property as the universal solution to the inequation to $s\circ Tp\le s\circ Tq$. Category theoretically, we can say that $s$ is the coinserter of $(Tp,Tq)$ and also that $\widetilde T$ is the (order-enriched) left Kan extension of $DT$ along $D$ where $D$ is the embedding of sets into (discrete) ordered sets.

The following fact allows us to use known results about the span-based relation lifting to compute the order-extension of a set-functor in many examples.

**Fact:** If $T$ preserves weak pullbacks, then applying $\widetilde T$ to a preorder $(X,\le)$ agrees with applying the relation lifting $\overline T$ to $\le$.

**Example:** Let $(X,\le)$ be a preorder. For subsets $a,b\subseteq X$ we have $a\le b\in \widetilde{\mathcal P}(X,\le)$ iff
\begin{gather}
\forall x\in \mathcal a\,.\, \exists y\in b\,.\,x\le y \\
\forall y\in \mathcal b\,.\, \exists x\in a\,.\,x\le y \\
\end{gather}

In domain theory, this is also known as the Egli-Milner order. When restricted to convex subsets (and modified wrt the empty subset)  $\widetilde{\mathcal P}$ is known as the Plotkin powerdomain. See also my review of [powerdomains](https://hackmd.io/@alexhkurz/r1SJ8lizO).

## Cospan-Based Relation Lifting

To cotabulate a relation $R\subseteq X\times Y$ by a cospan

$$X\stackrel j \rightarrow \mathbf R\stackrel k\leftarrow Y$$

we need to recall the **collage** $\bf R$ of a relation $R$. This notion can also be defined in case $X$ and $Y$ are ordered sets and $R$ is **weakening-closed**, that is,

$$\frac{x'\le x\,R\, y\le y'}{x'\,R\,y'}.$$

We give the more general definition, because it shows that the cospan-based relation lifting cannot only be used to extend set-functors but also ordered functors.

If $R\subseteq X\times Y$ is a weakening relation, then the **collage** $\bf R$ is an order on the disjoint union $X+Y$ such that $x\mathbf R y$ if (i) $x\le y$ in $X$ or (ii) $xRy$ or (iii) $x\le y$ in $Y$.

Given a functor $T:\sf Set\to Set$, [^Ord] we can use the collage to give a cospan-based definition of relation lifting.  

**Definition:** Let $R\subseteq X\times Y$. Then

$$\widehat T: \sf Rel\to Rel$$ 

is defined$(a,b)\in \widehat TR$ if $a\le b$ in $\widetilde T\bf R$.

**Fact:** If $T$ preserves weak pullbacks then $\overline T=\widehat T$.

## Conclusion

The span-based relation lifting can be generalised to ordered sets an is well-behaved if the functor preserves weak pullbacks.

The cospan-based relation lifting is ineherently order enriched, but can be applied to the discrete case if we extend the functor to ordered sets.

One application of relation lifting is to define coalgebraic bisimulation. Here the span-based and the cospan-based definition agree if the functor preserves weak pullbacks, but in general it is only [cospan bisimilarity](https://hackmd.io/@alexhkurz/rk4TFb8FP) that captures coalgebraic behavioural equivalence/preorder.

The cospan-based relation lifting generalises from ordered sets to Lawvere metric spaces and other categories enriched over a quantale.


## References 

References can be found in the survey article
- Kurz, Velebil: Relation Lifting (URL to be added).

[^Ord]: (or a functor on preorders or posets)
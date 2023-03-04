---
tags: coalgebraic logic, coalgebraic modal logic, maths, functorial modal logic
---

# Presenting Functors by Operations and Equations

(draft)

The main theorem is that a functor on a variety (in the sense of universal algebra) has a presentation by operations and equations if and only if the functor preserves sifted colimits.

The theory of sifted colimits is well explained in Adamek-Rosicky-Vitale. We only cover some highlights.

In all of the following $\mathcal A$ is a variety in the sense of univeral algebra, that is, a category of algebras specified (finitary) operations equations. (We will assume all operations to be finitary in the following, even if we drop the qualifier.)

## Sifted Colimits

**Filtered categories** are precisely categories $\mathcal D$ such that colimits over $\mathcal D$ commute with finite limits in Set. There is also a characterization of filtered categories independent of sets – a category $\mathcal D$ is filtered if and only if the diagonal functor $\mathcal D \to \mathcal D^\mathcal I$ is final for each finite category $\mathcal I$. 

**Sifted categories** are the categories $\mathcal D$ such that colimits over $\mathcal D$ commute with finite products. These categories are characterized by the property that the diagonal functor $\mathcal D \to \mathcal D \times \mathcal D$ is final.


**Facts:** 
- Every filtered colimit is sifted.
- Reflexive coequalisers are sifted but not filtered.
- Sifted colimit preserving functors preserve filtered colimits. 

An object $A$ of a category $\mathcal C$ is **finitely presentable** if its hom-functor $hom(A, −) : \mathcal C → Set$ preserves filtered colimits. A category $\mathcal C$ is locally finitely presentable **(lfp)** if it is cocomplete and has a set $\mathcal X$ of finitely presentable objects such that each object of $\mathcal C$ is a filtered colimit of objects from $\mathcal X$.

An object $A$ is **strongly finitely presentable** if its hom-functor $hom(A,−) : \mathcal C → Set$ preserves sifted colimits. A category $\mathcal C$ is strongly locally finitely presentable **(slfp)** if it is cocomplete and has a set $\mathcal X$ of strongly finitely presentable objects such that each object of $\mathcal C$ is a sifted colimit of objects from $\mathcal X$.

Let $\mathcal A$ be a variety in the sense of universal algebra.

**Facts:**
- Finitely presentable objects in $\mathcal A$ are algebras finitely presentable in a usual sense.
- Strongly finitely presentable algebra = retract of finitely generated free algebra.
- Finitely presentable algebra = reflexive coequalizer of strongly finitely presentable ones.
- Sifted colimit preserving functors on $\mathcal A$ are determined by their action on finitely generated free algebras.

Let $Alg(L)$ be the categories of algebras for the functor $L:\mathcal A\to\mathcal A$.

**Theorem:** If $\mathcal A$ is a variety and $L:\mathcal A\to \mathcal A$ preserves sifted colimits then $Alg(L)$ is a variety.

**Proposition:** 
- Let $\mathcal A$ be a variety such that every finitely presentable algebra is projective. Then any functor $L : \mathcal A \to  \mathcal A$ preserving filtered colimits preserves sifted colimits.
- If $T:Set\to Set$ preserves filtered colimits then $T$ preserves sifted colimits.
- For any filtered colimit preserving functor $L : BA → BA$ there is a sifted colimit preserving functor $L′ : BA → BA$ such that $L$ and $L′$ are isomorphic when restricted to the full subcategory of BA without $1$. Moreover, $Alg(L) = Alg(L′)$.

## Presenting Functors on Varieties

### Introduction

Given an adjunction $L\dashv R:\mathcal C\to \mathcal X$ such that the right-adjoint $R$ is monadic (or of descent type) all objects $A\in\mathcal C$ have a presentation "by generators and relations"
$$LRLRA\rightrightarrows LRA \to A.$$

In words, $A$ is the quotient of the free algebra $LRA$ over generators $RA$ by equations in $LRLRA$.

We apply this "monadic presentation" now to the situation where $A$ is an endofunctor. In fact, we apply it twice and combine two representations:

*Step 1:* We represent a sifted colimit preserving endofunctor on a variety $\mathcal A$ such that the "generators" and "relations" are given by sifted colimit preserving endofunctors on Set.

*Step 2:* We represent a sifted colimit on Set as the quotient of polynomial functor.

### Preliminaries

Let $S(\mathcal C)$ be the category of sifted colimit preserving functors $\mathcal C\to\mathcal C$.

**Fact:** The category $S(\mathcal C)$ is slfp if $\mathcal C$ is.

A functor $H : \mathcal A \to \mathcal B$ between slfp categories is called **algebraically exact** provided that it preserves limits and sifted colimits. 

**Fact:** If $H$ is algebraically exact it has a left adjoint. 

### Step 1

Let $U:\mathcal A\to Set$ be a variety and $F\dashv U$. Define
$$\Psi:S(\mathcal A)\to S(Set)$$

via $\Psi L = ULF$ and 
$$\Phi: S(Set) \to S(\mathcal A)$$

via $\Phi T = FTU$. 

**Fact:** $\Psi$ is algebraically exact and $\Phi\dashv\Psi$.

After the first step, we obtain a quotient $FULFU\to L$. Here, $FULFU$ results from applying the free construction $\Phi=F-U$ to the Set-functor $ULF$. What we need next is a presentation by operations and equations of $ULF$. 

### Step 2

Every sifted colimit preserving on $Set$ (=filtered colimit preserving functor=finitary functor) can be presented as the quotient of a polynomial functor. 

Indeed, if $T:Set\to Set$ is finitary then we have a natural transformation
\begin{align}
\coprod_{n\in\mathbb N} Tn\times X^n & 
\stackrel {q_X} \longrightarrow TX \\
(\sigma,v) & \ \mapsto \ T(v)(\sigma)
\end{align}

with each $q_X$ being surjective (even for infinite sets $X$).

Note that $v$ can be seen both as a tuple $(x_1,\ldots x_n)$ and as a function $n\to X$. Hence we can evaluate the term $\sigma(x_1,\ldots x_n)$ by applying $Tv:Tn\to TX$ to $\sigma$.

This gives us a representation of $T$ as a functor by operations and equations where the set of $n$-ary operations is $Tn$ and the set of equations in $n$ variables is the kernel of $q_n$.

### The Presentation

**Theorem:** A functor on a variety has a presentation by operations and equations iff the functor preserves sifted colimits.

To prove "if", one shows that every sifted colimit preserving functor $L$ on a variety is a quotient
$$FGUA\stackrel {q_A} \longrightarrow LA$$

where $GX=\coprod_{n\in\mathbb N}ULFn\times X^n$. 
- The $n$-ary modal operators $\sigma$ are the elements of $ULFn$.
- $q_A$ maps $(\sigma,v:n\to UA)$ to $L(v^\dagger)(\sigma)$ where $v^\dagger:Fn\to A$ is the adjoint transpose of $v$.[^sigma]
- The equations in $n$ variables are the kernel of $q_{Fn}$.

[^sigma]: Note that $(\sigma,v:n\to UA)$ is a modal formula $\Delta(a_1,\ldots a_n)$ where $\Delta=\sigma$ and $a_i=v(i)$.

In particular the $(\sigma,v:n\to UA)$ are modal formulas $$\Delta(a_1,\ldots a_n)$$ 

where $\Delta=\sigma$ and $a_i=v(i)$.

The set $\Sigma$ of operations and the set $E$ of equations constitute the presentation $\langle\Sigma_L,E_L\rangle$ of $L$.

**Theorem:** Let $\mathcal A \cong Alg(Σ_\mathcal A, E_\mathcal A)$ be a variety and $\langle \Sigma_L, E_L\rangle$ a presentation of $L : \mathcal A \to \mathcal A$. Then $Alg(Σ_\mathcal A + \Sigma_L, E_\mathcal A+E_L)$ is isomorphic to Alg(L), where equations in $E_\mathcal A$ and $E_L$ are understood as equations over $\Sigma_\mathcal A + \Sigma_L$.

**Example:** The variety of modal algebras is presented by the operations and equations of Boolean algebra plus a unary operation $\Box$ and two equations specifying that $\Box$ preserves finite meets.


## References

Kurz-Rosicky: [Strongly Complete Logics for Coalgebras](https://arxiv.org/pdf/1207.2732.pdf), 2012.


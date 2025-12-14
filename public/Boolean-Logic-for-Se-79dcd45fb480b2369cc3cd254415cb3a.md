---
tags:
  - coalgebraic logic
  - coalgebraic modal logic
  - maths
  - functorial modal logic
---

# Boolean Logic for Set-Coalgebras

We build on concepts and examples explained previously, but try to keep this section self-contained from a technical point of view.

We specialise the setting from [Coalgebraic Logic: Introduction](https://hackmd.io/@alexhkurz/r1t-Y6f8L) as follows:

- a functor $T:Set \to Set$
- a functor $L:{\sf BA} \to {\sf BA}$
- $F\dashv U:{\sf BA} \to Set$
- $P:Set\to BA$ given by $PX=2^X$
- $S:BA\to Set$ given by $SA=BA(A,2)$
- $\delta_X: LPX\to PTX$

We have seen previously that modal logics for $T$-coalgebras can be described by giving $L$ and $\delta$. 

Conversely, [every sifted colimit preserving functor on a variety has a presentation](https://hackmd.io/@alexhkurz/ByRlkfCio) and hence gives rise to a modal logic. Before we see how this works let us state some results needed later.

**Proposition:** Let $L$ be a sifted colimit preserving functor on ${\sf BA}$. There is a functor $L'$ that agrees with $L$ on all non-trivial algebras and preserves filtered colimits. Moreover $Alg(L)\cong Alg(L')$.

**Lemma:** Let $H$ be a functor on ${\sf BA}$ and $L$ a sifted colimit preserving functor on ${\sf BA}$ and $LFn=HFn$ for all finitely generated free Boolean algebras $Fn$. Then $LA=HA$ for all finite non-trivial algebras $A$.

*Proof:* Every finite non-trivial Boolean algebra is a retract of a finitely generated free one.


## The logic of $L$

As promised, we are going to show that  every sifted colimit preserving functor on a variety has a presentation and hence gives rise to a modal logic.

Every sifted colimit preserving functor $L$ on a variety is a quotient

$$FGUA\stackrel {q_A} \longrightarrow LA$$

where $GX=\coprod_{n\in\mathbb N}ULFn\times X^n$. Since $F$ is a left adjoint, the morphism $q_A$ is the adjoint transpose of a morphism

$$GUA \longrightarrow ULA$$

which determines (and is determinedy by) the following modal logic.
- The $n$-ary modal operators $\sigma$ are the elements of $ULFn$.
- $q_A$ maps $(\sigma,v:n\to UA)$ to $L(v^\dagger)(\sigma)$ where $v^\dagger$ is the adjoint transpose of $v$.
- The equations in $n$ variables are the kernel of $q_{Fn}$.

In particular the $(\sigma,v:n\to UA)$ are modal formulas 

$$\Delta(a_1,\ldots a_n)$$ 

where $\Delta=\sigma$ and $a_i=v(i)$.

The set $\Sigma$ of operations and the set $E$ of equations constitute the presentation $\langle\Sigma_L,E_L\rangle$ of $L$.

**Example:** The variety of Boolean algebras with operator (BAO) is presented by the operations and equations of Boolean algebra plus a unary operation $\Box$ and two equations specifying that $\Box$ preserves finite meets.


## Moss's coalgebraic logic

The first proposal for a logic of coalgebras parametric in the coalgebra functor $T$ was Moss's coalgebraic logic. It can be obtained by defining $L$ via a presentation

$$FGUA\stackrel {q_A} \longrightarrow LA$$

where $G=T$. Originally, Moss's logic did not have equations, which corresponds to taking the $q_{Fn}$ to be identities. This use of the functor $T$ itself as a syntax constructor for a logic yields a very interesting presentation. This presentation is equivalent in expressiveness (in case $T$ preserves weak pullbacks) to the ones we know from classical modal logic, but is quite different in terms of the opportunities it offers as a logical tool. For more see the section on [Moss's Coalgebraic Logic](https://hackmd.io/@alexhkurz/rJksR4sso).


## The logic of all predicate liftings

Pattinson introduced [predicate liftings](https://hackmd.io/@alexhkurz/SJcARPMVO) to give a parametric treatment of coalgebraic logic that includes classical modal logic as an example. The logic of all predicate liftings can be defined in our setting in a natural way. 

**Remark:** Note that Moss's logic is defined by applying $T$ directly to syntax, whereas here we want to use the duality given by $S:{\sf BA} \to Set$ and $P:Set\to{\sf BA}$ to keep $T$ on the semantic side of the duality. In fact, we might have been tempted to simply define $L = PTS$ and while this is still the guiding idea, this direct approach is only suitable if we start from a dual equivalence of base categories such as the one given by complete atomic Boolean algebras and Set or the one given by Boolean algebras and Stone spaces. Moreover, defining $L=PTS$ will not, in general, result in a sifted colimit preserving functor and, thus, not, in general, allow us to find a finitary presentation of $Alg(L)$ by operations and equations.

### Syntax

We define $L=PTS$ on finitely generated free algebras:

$$LFn = PTSFn$$

We extend $L$ to all algebras via sifted colimits (hence $L$ preserves sifted colimits by definition).

Moreover, $ULFn=UPTSFn$ is the set of all $n$-ary **predicate liftings**:

\begin{align}
UPTSFn &\cong UPT(2^n) \\
&= 2^{T(2^n)} \\
&\cong Nat({(2^n)}^X,2^{TX}) \\
&\cong Nat({(2^X)}^n,2^{TX}) \\
\end{align}

Since $L$ preserves sifted colimits it has a [presentation by operations and equations]() and this presentation presents $L$ by all predicates liftings as

$$FGUA\stackrel {q_A} \longrightarrow LA$$

where $GX=\coprod_{n\in\mathbb N}ULFn\times X^n$. 

### Semantics

The semantics $\delta_X:LPX\to PTX$ is given as follows. 
![](https://hackmd.io/_uploads/HJHa0kb2o.png =500x)

Every $PX$ is a sifted colimit $c_i:Fn\to PX$. Let $c_i^\ast$ be the adjoint transpose. Since $L$ preserves sifted colimits and since $PTc_i^\ast$ is a cocone, $\delta_X$ is well-defined.

In more detail, $c_i:Fn\to PX$ is also a valuation of variable $v:n\to UPX$ or also a tuple $(a_1,\ldots a_n)$ of subsets of $X$. Its adjoint transpose $X\to SFn$ combines the characteristic functions $\chi_i$ of all the subsets $a_i$ into one function $X\to 2^n$, $x\mapsto \langle\chi_1,\ldots\chi_n\rangle$. Now, given a modal operator $\Delta\in UPTSFn = 2^{T{(2^n)}}$ we have that $PTc_i^\ast(\Delta)$ is

$$TX\stackrel{Tc_i^\ast}\longrightarrow T(2^n)\stackrel\Delta\longrightarrow 2$$

which, as expected, coincides with the semantics of a modal operator as a predicate lifting.

**Remark:** Using the Lemma above (which is special to the category ${\sf BA}$), we do not need to go via the finitely generated free algebras $Fn$ and can define $\delta_X$ for finite $X$ directly as the isomorphism 

$$LPX=PTSPX\cong PTX$$

which, in terms of the presentation of $L$ by modal operators, corresponds to

\begin{align}
\delta_X: LPX & \to PTX\\
\Delta(a_1,\ldots a_n) &\mapsto \Delta(a_1,\ldots a_n)
\end{align}

where 
- on the left $\Delta(a_1,\ldots a_n)$ is understood as syntax, that is, $\Delta\in UPTSFn$ and $(a_1,\ldots a_n)\in (UPX)^n$ and 
- on the right $\Delta(a_1,\ldots a_n)$ is evaluated by taking the predicate lifting $\Delta$ as a function ${(2^X)}^n \to 2^{TX}$, that is, as a function $(UPX)^n\to UPTX$.

## From Funtors to Predicate Liftings and Back

Every sifted colimit preserving functor $L$ with a semantics $\delta:LP\to PT$ can be represented by predicate liftings. Conversely, each set of predicate liftings presents a functor together with a semantics. We summarize this corrspondence.

![](https://hackmd.io/_uploads/Sktt1gIhj.png)

Starting with a functor $L$, its presentation $FGU\to L$ and its semantics $LP\to PT$, we obtain its presentation by predicate liftings in the last line, where $\Delta$ ranges over all elements of $G_n$. Conversely, any collection of predicate liftings $\Delta$ defines a functor $L$ obtained from "climbing the ladder up" and quotienting the corresponding $FGUPX\to PTX$.

## References

- Kurz-Rosicky: [Strongly Complete Logics for Coalgebras](https://arxiv.org/pdf/1207.2732.pdf), 2012.

Diagrams: 
- [Semantics of $L$](https://q.uiver.app/?q=WzAsOCxbMiwwLCJMUFgiXSxbNCwwLCJQVFgiXSxbMiwyLCJMRm4iXSxbNCwyLCJQVFNGbiJdLFswLDAsIlBYIl0sWzAsMiwiRm4iXSxbNiwwLCJYIl0sWzYsMiwiU0ZuIl0sWzAsMSwiXFxkZWx0YV9YIl0sWzIsMywiPSJdLFs1LDQsImNfaSJdLFsyLDAsIkxjX2kiXSxbMywxLCJQVGNfaV5cXGFzdCIsMl0sWzYsNywiY19pXlxcYXN0Il1d)
- [From $L$ to $\Delta$ (and back)](https://q.uiver.app/?q=WzAsMTIsWzEsOSwie30iXSxbMCwzLCJcXGNvcHJvZF97blxcaW5cXG1hdGhiYiBOfSAoR19uXFx0aW1lcyAoVVBYKV5uKSJdLFs0LDMsIlVQVFgiXSxbMCw0LCIoVVBYKV5uIl0sWzQsNCwiVVBUWCJdLFswLDAsIkZHVVBYIl0sWzIsMCwiTFBYIl0sWzQsMCwiUFRYIl0sWzAsMSwiRkdVUFgiXSxbNCwxLCJQVFgiXSxbMCwyLCJHVVBYIl0sWzQsMiwiVVBUWCJdLFsxLDJdLFszLDQsIlxcRGVsdGEiXSxbNSw2LCJxX3tQWH0iLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNiw3LCJcXGRlbHRhX1giXSxbOCw5XSxbMTAsMTFdXQ==)




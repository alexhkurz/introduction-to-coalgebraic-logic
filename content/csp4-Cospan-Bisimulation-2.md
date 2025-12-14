# Cospan Bisimulation 2

(draft ... references to be added)

## Introduction

We collect some results on cospan bisimulations. These results invariable relate ordinary bisimulations on sets with ordered bisimulation on ordered sets. Since bisimulations on ordered sets include simulations as well as bisimulations we will call them **(bi)simulations**.

#### Overview 

We first review **notation** and define the notion of an **order-extension** of a set-functor.

The subsection **span and cospan bisimulations** investigates the relationship between cospan bisimulations and span bisimulations. 

The subsection **cospan (bi)simulations and change of base** looks at cospan (bi)simulations enriched over different quantales.

#### Summary

Together this shows that cospan (bi)simulation works uniformly over sets, orders, metric spaces and $\Omega$-categories. For example, Rutten's final coalgebra theorem for sets can now be seen as a special case of Worrell's final coalgebra theorem for $\Omega$-categories.

## Questions

If $f_\diamond$ and $f^\diamond$ are cospan-bisimulations, is then $f$ a coalgebra morphism?

Connections with *logic induced bisimulations*?


## Notation

In this section,  
- $Ord$ denotes the category $Pre$ of preorders or the category $Pos$ of posets. 
- $D:Set\to Ord$ denotes the discrete functor and we write 
$$C\dashv D\dashv V$$ for the induced chain of adjoints.
- $T$ denotes a functor $Set\to Set$.

## Order-Extensions

Following on from [part one](https://hackmd.io/6Ehr9bIQQgSZKeeasdSKoQ), we are interested in preordification $T'$ of $T$. Preordifictions are universal solutions to the problem of finding a $T'$ together with a transformation $DT\to T'D$. In fact, the preordification $T'$ of $T$ can be defined as the $Ord$-enriched left Kan extension of $DT$ along $D$. But some results hold more generally for any ordered extension $DT\to T'D$.

**Definition:** We call $T':Ord\to Ord$ an **order-extension** of $T:Set\to Set$ if there is a natural transformation 

$$DT\to T'D.$$

**Remark:** Equivalently, $T'$ is an order-extension of $T$ if there is a natural tranformation $T\to DT'V$. This also captures the intuition that $T'$ adds ordering to $T$. If one insists on $T\to DT'V$ being an iso, this notion is equivalent to the one of Jacobs and Jacobs-Hughes (ADD REFERENCES). 

**Question:** $T\to DT'V$ iso is equivalent to $DT\to T'D$ being bijective. Is there an interesting example of an order-extension for which $DT\to T'D$ is not bijective?

**Remark:** The mate of $DT\to T'D$ is $TV\to VT'$. If $T'$ is the preordification then $TV\to VT'$ is an iso, but for posetifications this does not need to be the case as the example of convex powerset (=the posetification of  powerset) shows. We summarise some of the relationships between properties of these natural transformations in the table below.

| | | | |
|---|---|---|---|
1|$DT\to T'D$ | $T$' is an order-extension of $T$ |
2|$DT\to T'D$ iso| $T'$ a strict order-extension of $T$ |
3|$T'$ left Kan extension,  | $T'$ is the ordification of $T$ |
4|$TV\to VT'$ iso | $T$' is an order-lifting of $T$ |
5|$T\to VT'D$ iso | $T'D$ is an order on $T$ |

$3\Rightarrow 2\Rightarrow 1$ and $2\Rightarrow 5$ and $4\Rightarrow 5$. If $Ord=Pre$, then also $3\Rightarrow 4$.



## Span and cospan bisimulations

The following result makes precise that every span bisimulation is a cospan (bi)simulation.

**Proposition:** Let $T'$ be an order-extension of $T$. If two states in two $T$-coalgebras are $T$-span-bisimilar then they are $T'$-cospan-(bi)similar.

*Proof:* Let $X\to TX$ and $Y\to TY$ be two $T$-caolgebras. Let $X\leftarrow R \rightarrow Y$ be a $T$-span bisimulation. Let $R'$ be the cocomma of $X\leftarrow R \rightarrow Y$. Applying $T'$ to the square 

$$
\begin{array}{}
&&DR&&\\
&\swarrow&&\searrow&\\
DX&&&&DY\\
&\searrow&&\swarrow&\\
&&R'&&
\end{array}
$$

and using the arrow $R\to TR$ from the span-bisimulation the universal property of the cocomma $R'$ gives the required arroe $R'\to T'R'$. QED

**Examples:** A number of familiar examples arise as instances of this proposition.
- $T=\mathcal P$ and $T'$ the downset or upset or convex powerset functor: Every span-bisimulation is also a cospan-bisimulation. Moreover, if two points are bisimilar then they are forward-similar and backward-similar.
- $T=Up\mathcal P$ is the monotone neibhbourhood frame functor. $T'$ is its ordification or also $\mathcal D\mathcal U$ or also $U^oD^o$.
- ...

**Questions:** Is there something more one can say about structural relationships between bisimulation and simulation? For example, one could try to isolate those functors for which forward simulation plus backward simulation is bisimulation, but I do not know how interesting this would be (is there a good abstract notion of "deterministic" functor?). Anything else?


For weak pullback preserving functors, we also have the converse of the previous proposition.

**Proposition:** Let $T:Set\to Set$ preserve weak pullbacks. If two states in two $T$-coalgebras are cospan-bisimilar then they are span-bisimilar.

*Proof:* Let $R$ be a cospan bisimulation and $X\to R' \leftarrow Y$ be the collage, hence cocomma, of $R$.  Let $T'$ be the ordification of $T$. With the help of the iso $DT\to T'D$ we can consider the $(R,R')$-square as a cocomma in ordered sets. Cocommas are exact. Since ordifications $T'$ preserve exact squares if $T$ preserves weak pullbacks [Theorem 4.11,BKV15] , the $(TR,T'R')$-square is exact. But exact squares in posets are weak comma squares, hence there is an $R\to TR$ making $R$ into a span bisimulation. QED

## Morphisms and Bisimulations

In sets every function is a relation and every coalgebra morphism a bisimulation. In ordered sets every function $f:X\to Y$ gives rise to two relation $f_\diamond:X\looparrowright Y$ and $f^\diamond: Y\looparrowright X$ with
$$ (x,y)\in f_\diamond \ \Leftrightarrow \ fx\le y
\quad\quad\quad\quad
(y,x)\in f^\diamond \ \Leftrightarrow \ y\le fx$$

**Proposition:** Let $T:Ord\to Ord$. If $f$ is a $T$-coalgebra morphism, then $f_\diamond$ and $f^\diamond$ are cospan-(bi)simulations.

*Proof:* $f_\diamond$ and $f^\diamond$ are the weakening closures of the spans $(id,f)$ and $(f,id)$, respectively. Recall the definition of cospan-(bi)simulation and the fact that the collage of the weakening closure of a relation represented by a span $(p,q)$ is the cocomma of $(p,q)$. Now the proposition follows from the universal property of cocommas. QED

**Example:** [Recall](https://hackmd.io/V6m2cAy_TdagteE4RG_sbw#mathcal-Dmathcal-U-coalgebras) that $R$ is a $\mathcal D\mathcal U$-cospan-(bi)simulation iff 
\begin{align}
xRy \ \ \Rightarrow \ \ & 
\forall a\in\xi x.\exists b\in\nu y. \forall y'\in b.\exists x'\in a.\ x'Ry' 
\end{align}

We also [know](https://hackmd.io/Kaf6xVVMRP2w7a9hTLjT2w) that $f:X\to Y$ is a morphism $(X,\xi)\to(Y,\nu)$ of $\mathcal D\mathcal U$-coalegbras iff 
\begin{gather}
\forall a\in \xi x.\exists b\in\nu(fx).\forall y\in b.\exists x\in a. fx \le y\\[1ex]
\forall b\in \nu(fx).\exists a\in\xi(x).\forall x\in a.\exists y\in b. \ y\le fx
\end{gather}


It is now easy to check that the first clause says precisely that $f_\diamond$ is a (bi)simulation and the second clause that $f^\diamond$ is a (bi)simulation. (I find this very pretty.)


**Question:** Can we prove the converse of the proposition?  - - - This is interesting, I wrote out the obvious diagrams, but I didn't see how to proceed. - - - Maybe the converse is only true in special cases?


## Cospan (bi)simulations and change of base

Cospan (bi)simulations allow us to see ordinary coalgebraic bisimulations as well as quantale enriched ones in the same framwork. The basic picture, taken from Section 4 of [BKV19] is as follows. $C\dashv D\dashv V$ take, respectively, connected components, discrete preorders and underlying sets. They lift via [doctrinal adjunction](https://hackmd.io/V-YOMuAZTOSZpZUC8mC2tw) to coalgebras since the right adjoints satisfy $DT_{Set}\cong T_{Pre}D$ and $VT_{Pre}\cong T_{Set}V$.

![](https://i.imgur.com/LCIbNBE.png)

On the right-hand side, $d'$ is the top and bottom preserving embedding with a right adjoint $v'$ and, if $\Omega$ is non-trivial and integral[^integral], a left adjoint $c'$. The left ajoint $c'$ maps all elements other than bottom to $1$ and the right adjoint $v'$ maps all elements other than top to $0$. The adjunction $d'\dashv v'$ lifts to a $Pre$-enriched adjunction between the categories of coalgebras. If the quantale $\Omega$ has no zero-divisors, then $c'$ is a quantale-morphism and $c'\dashv d'$ lifts to $\Omega$-cat enriched adjunction between categories of coalgebras. See Propositions 4.9 and 4.10 of [BKV19] for details. 

**Propositions ??** ... I think, mutatis mutandis, we can move the two propositions above from the left Set/Pre column to the right Pre/$\Omega$-cat column ... 

**Examples ??** Can we make an example of ordinary transition systems and bisimulation and then a metric example? Are there scenarios where one would want an orderd coalgebra as an abstraction of a metric coalgebra? I never really looked so much at Kripke frames over metric spaces ... any ideas?

## References

Balan, Kurz, Velebil: [Positive fragments of coalgebraic logics](https://arxiv.org/pdf/1402.5922v4). 2015.

Balan, Kurz, Velebil: [Extending set functors to generalised metric spaces](https://lmcs.episciences.org/5132/pdf). 2019.

Jacobs

Hughes-Jacobs

## Further

Scratch notes on [exact squares](https://hackmd.io/uGb9AQJnRsCWk3yd_kE1lw)

[^integral]: A quantale is integral if the neutral element of the multiplication is the top element.

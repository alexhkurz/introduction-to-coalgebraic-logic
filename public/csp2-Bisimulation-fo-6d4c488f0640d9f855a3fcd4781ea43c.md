---

#  Bisimulation for Ordered Coalgebras

(draft ... reference to be added) ... ([up](https://hackmd.io/@alexhkurz/ryrkkYZZc))

The basic observation about ordinary, set-based coalgebras, due to Aczel's monograph "Non-Well Founded Sets", is the following:

Given a coalgebra $X$, the largest bisimulation on $X$ is the kernel of the unique morphism $X\to Z$ into the final coalgebra $Z$.

Aczel observed this as a fact for special coalgebras such as Kripke models and then took it as a starting point for a general definition, known today as Aczel-Mendler bisimulation.

Moving to the ordered setting, that is, enriching over preorders or posets, one can generalise by either formalising kernels as pullbacks (as before) or as order-pullbacks, which we call comma objects or comma squares or just commas, following terminology introduced by Lawvere in the category-enriched situation.

Choosing pullbacks, one only recovers the equality on the final coalgebra. On the other hand, choosing comma squares leads to a richer theory of bisimulations that includes simulations as special cases of bisimulations.

In fact, in preorders and posets, comma and cocomma squares are exact, that is, weakening relations can be both tabulated and cotabulated. This leads us to Definition 5.2 of (Worrell 2000), which, btw, does work for more general enrichments. Also note that because of the use of co-spans there is no need to restrict to weak-pullback preserving functors.

We first need to recall that every weakening relation $R:X\looparrowright Y$ can be represented as a preorder/poset $\overline R$ such that
  - the underling set of $\overline R$ is the disjoint union of $X$ and $Y$ and
  - the order on $\overline R$ is the one inherited from $X$ and $Y$ plus $x\overline Ry  \ \Leftrightarrow \  xRy$.

In other words, we encode the relation $R$ via the order of the preorder/poset $\overline R$, also known as the *collage* of $X$ and $Y$.

**Definition:** Let $T$ be a (locally monotone) functor on preorders or posets. The weakening relation $R:X\looparrowright Y$ is an ***order-bisimulation*** between coalgebras $X$ and $Y$ if there is  $\overline R\to T\overline R$ such that 
$$
\begin{array}{}
X  & \rightarrow & \overline R & \leftarrow & Y\\
\downarrow &&\downarrow && \downarrow \\
TX  & \rightarrow & T\overline R & \leftarrow & TY
\end{array}
$$

**Remark:** Equivalently, $R:X\looparrowright Y$ is an order-bisimulation if the unqiuely determined function  $\overline R\to T\overline R$ in $\sf Set$ is order-preserving. 

**Remark:** It follows from the definition that $R$ is a weakening relation. In other words, the pullback and the comma of the cospan $X \rightarrow \overline R \leftarrow Y$ coincide. (**Notation:** I am tempted to drop the overline over the $R$ in the following, because of the ugly extra space it introduces between lines.)

**Example:** The identity cospan $X \rightarrow X \leftarrow X$ is not isomorphic to the collage of a relation unless $X$ is discrete. The collage of the order on $X$ can be obtained as the cocomma of the comma of the identity cospan. [^comma] In fact, in posets, every collage is the cocomma of its comma.

[^comma]: This observation is useful for working with abstract order-enriched categories. If they admit commas of identity cospans, then for each object there is a span representing the order on that object.

**Example:** If we instantiate the definition above with the downset functor and the upset functor, we obtain that $T$-bisimulation is simulation.
- Let $D$ be the downset functor. A bisimulation between $D$-coalgebras $(X,\xi)$ and $(Y,\nu)$ is a relation $R\subseteq X\times Y$ such that $$xRy\ \Rightarrow \ \xi x \subseteq \nu y,$$

  or, more explicitely, [^xtox']
\begin{align}
xRy \ \Rightarrow \ & \forall x\to x'.\exists y\to y'. x' R\, y' 
\end{align}

[^xtox']: We write $x\to x'$ for $x'\in\xi x$ and similarly for $y\to y'$ etc.

- Let $U$ be the upset functor. Recall that $UX=[X,2]^o$ is ordered by reverse inclusion. A bisimulation between $U$-coalgebras $(X,\xi)$ and $(Y,\nu)$ is a relation $R\subseteq X\times Y$ such that $$xRy\ \Rightarrow \ \xi x \supseteq \nu y,$$

  or, more explicitely,
\begin{align}
xRy \ \Rightarrow \ & \forall y\to y'.\exists x\to x'. x' R y' 
\end{align}

Intuitively, a $D$-bisimulation is forward simulation: Every move in the domain can be simulated by a "larger" move in the codomain. Conversely, $U$-bisimulation is backward simulation: Every move in the codomain can be simulated by "smaller" move in the domain. (The words "smaller" and "larger" are intended to remind us of the fact that $R$ is a weakening relation closed under the order in $X$ and $Y$.)

**Remark:** Notice that even if $X$ and $Y$ are discrete, we do not obtain ordinary bisimulation, but rather ordinary forward and backward simulation. On the other hand, if we take $T$ to be the convex powerset functor, then $T$-bisimulation is ordinary bisimulation.

**Remark:** The framework of functorial modal logic guarantees that for every functor $T$ there is a sound, complete and bisimilarity preserving logic. In this case, these are the familiar $(\Diamond,\bot,\vee)$-logic for the downset functor and the $(\Box,\top,\wedge)$-logic for the upset functor. In case of the convex powerset functor we obtain Dunn's positive modal logic.



## Ordered neighbourhood coalgebras 

Recall from [Monotone Neighbourhood Coalgebras](https://hackmd.io/Kaf6xVVMRP2w7a9hTLjT2w?both) and [Neighbourhood Coalgebras](https://hackmd.io/P5xaVUGBRPemOviyHyJnQQ) the various ways in which neighbourhood coalgebras can be extended to the ordered setting. For the proofs below, we will need the following.

In $\mathcal D(X,\le)$ we have
$$a \le b\ \Longleftrightarrow \ \forall x\in a.\exists y\in b.\ x\le y.$$

In $\mathcal U(X,\le)$ we have
$$a \le b\ \Longleftrightarrow \ \forall y\in b.\exists x\in a.\ x\le y.$$

### $\mathcal D\mathcal U$-coalgebras

Recall $\mathcal D\mathcal UX = [[X,2],2]$ for ordered sets $X$. In particular $\mathcal D\mathcal UX$ is $Up\mathcal P X$ for discrete $X$ (when $Up\mathcal P X$ is ordered by inclusion).

**Lemma:** Let $R:X\looparrowright Y$ be a weakening relation and $R'$ its collage. Then the order of $\mathcal D\mathcal UR'$ is given by
$$ A\le B \ \Longleftrightarrow \ \forall a\in A.\exists b\in B.\forall y\in b.\exists x\in a.\ xRy$$

**Corollary:** A weakening relation $R:X\looparrowright Y$ is a cospan-(bi)simulation between $\mathcal D\mathcal U$-coalgebras $(X,\xi)$ and $(Y,\nu)$ iff 
\begin{align}
xRy \ \ \Rightarrow \ \ & 
\forall a\in\xi x.\exists b\in\nu y. \forall y'\in b.\exists x'\in a.\ x'Ry' 
\end{align}

### $\mathcal U\mathcal D$-coalgebras

Recall $\mathcal U\mathcal DX = [[X^o,2],2]^o$ for ordered sets $X$. 

**Lemma:** Let $R:X\looparrowright Y$ be a weakening relation and $R'$ its collage. Then the order of $\mathcal U\mathcal DR'$ is given by
$$ A\le B \ \Longleftrightarrow \ \forall b\in B.\exists a\in A.\forall x\in a.\exists y\in b.\ xRy$$

**Corollary:** A weakening relation $R:X\looparrowright Y$ is a cospan-(bi)simulation between $\mathcal D\mathcal U$-coalgebras $(X,\xi)$ and $(Y,\nu)$ iff 
or, more explicitely, 
\begin{align}
xRy \ \ \Rightarrow \ \ & \forall b\in\nu y.\exists a\in\xi x. \forall x'\in a.\exists y'\in b.\  x'Ry' 
\end{align}


### Order dual of R-coherent pairs

Can these characterisations be rephrased using the ordered version of $R$-coherent pairs? [^R-coherent] 

No, because $\forall x\in a. \exists y\in b.xRy$ is equivlant to $a\subseteq R^o[b]$. [^Ro] On the other hand, the dual [JKM20] $R^\partial$  of a relation $R$  is defined as $(a,b)\in R^\partial \Leftrightarrow R[a]\subseteq b$, that is, $\forall x\in a.xRy\Rightarrow y\in b$. 

**Remark:** The weakening relation $R:(X,\xi)\looparrowright (Y,\nu)$  is a $\mathcal U\mathcal D$-bisimulation iff
$$xRy \ \ \Rightarrow \ \ 
\forall y\to b.\exists x\to a. 
R[a]\supseteq b$$

and $R$ is a $\mathcal D\mathcal U$-bisimulation iff
$$xRy \ \ \Rightarrow \ \ 
\forall x\to a.\exists y\to b. 
a\subseteq R^o[b]$$


## Other Functors

#### Ordification of the Neighbourhood Functors

For the Ordification of the neighbourhood functor and the monotone neighbourhood functor see the note on [Cospan Bisimulation](https://hackmd.io/6Ehr9bIQQgSZKeeasdSKoQ).

#### Downsets

\begin{align} 
xRy \ \Longrightarrow \ 
& \forall x\in\xi(x). \exists y \in b. xRy 
\quad\quad
(\Leftrightarrow \xi(x)\subseteq R^o[\nu(y)])
\end{align}

#### Upsets

\begin{align} 
xRy \ \Longrightarrow \ 
& \forall y\in\nu(y). \exists x \in \xi(x). xRy 
\quad\quad
(\Leftrightarrow R[\xi(x)]\supseteq \nu(y))
\end{align}

#### Convex subsets

Is obtained from the conjunction of the two conditions above.




## References

Hansen, Kupke and Pacuit: [Neighbourhood Structures: Bisimilarity and Basic Model Theory](https://arxiv.org/pdf/0901.4430). LMCS 2009. (Def 3.5, Thm 3.12)

Worrell: [Coinduction for recursive data types: partial orders, metric spaces and $\Omega$-categories](https://www.sciencedirect.com/science/article/pii/S1571066105803561), CMCS 2000. (Def 5.2)

## Further Reading

Aczel:

Aczel, Mendler:

Lawvere:

Rutten:

[^eglimilner]: Given a preorder/poset $X$, the order on the convex powerset of $X$ is defined by $(a,b)\in \mathcal{\overline P}X$ if $\forall x\in a.\exists y\in b. x\le y$ and $\forall y\in b.\exists x\in a. x\le y$.

[^Ro]: If $R:X\looparrowright Y$ is a weakening relation then $R:Y^o\looparrowright X^o$ is the opposite relation. In the discrete case it coincides with $R^{-1}$.

[^D-bisim]: We use the definition of cospan bisimulation and that the order on $D$ is given by inclusion.

[^R-coherent]: R-coherent pairs were introduced in [HKR09].



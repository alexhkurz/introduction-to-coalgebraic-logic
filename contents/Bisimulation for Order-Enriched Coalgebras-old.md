#  FML: Bisimulation for Order-Enriched Coalgebras

(under construction)

[Modal Logic on Posets](https://hackmd.io/uvH1hEqBTE6uJKlI0qSRAA)
[Neighbourhood Frames over Posets](https://hackmd.io/Kaf6xVVMRP2w7a9hTLjT2w)
[Bisimulation for Metric-Enriched Coalgebra](https://hackmd.io/dhUAXEIIQCGiBpTNkU1RiQ)
...

---

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

**Definition:** Let $T$ be a (locally monotone) functor on preorders or posets. The weakening relation $R:X\looparrowright Y$ is an ***order-bisimulation*** between coalgebras $X$ and $Y$ if the unique function $\overline R\to T\overline R$ making the diagram 

$$
\begin{array}{}
X  & \rightarrow & \overline R & \leftarrow & Y\\
\downarrow &&\downarrow && \downarrow \\
TX  & \rightarrow & T\overline R & \leftarrow & TY
\end{array}
$$

commute (in $Set$) is order-preserving. 

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

- Let $U$ be the downset functor. Recall that $UX=[X,2]^o$ is ordered by reverse inclusion. A bisimulation between $U$-coalgebras $(X,\xi)$ and $(Y,\nu)$ is a relation $R\subseteq X\times Y$ such that $$xRy\ \Rightarrow \ \xi x \supseteq \nu y,$$

  or, more explicitely,
\begin{align}
xRy \ \Rightarrow \ & \forall y\to y'.\exists x\to x'. x' \le y' 
\end{align}

Intuitively, a $D$-bisimulation is forward simulation: Every move in the domain can be simulated by a "larger" move in the codomain. Conversely, $U$-bisimulation is backward simulation: Every move in the codomain can be simulated by "smaller" move in the domain. (The words "smaller" and "larger" are intended to remind us of the fact that $R$ is a weakening relation closed under the order in $X$ and $Y$.)

**Remark:** Notice that even if $X$ and $Y$ are discrete, we do not obtain ordinary bisimulation, but rather ordinary forward and backward simulation. On the other hand, if we take $T$ to be the convex powerset functor, then $T$-bisimulation is ordinary bisimulation.

**Remark:** The framework of functorial modal logic guarantees that for every functor $T$ there is a sound, complete and bisimilarity preserving logic. In this case, these are the familiar $(\Diamond,\bot,\vee)$-logic for the downset functor and the $(\Box,\top,\wedge)$-logic for the upset functor. In case of the convex powerset functor we obtain Dunn's positive modal logic.



## Ordered neighbourhood models

Ordered neighbourhood frames are $UD$-coalgebras. If $X$ is discrete then a coalgebra $X\to UDX$ is known as a monotone neighbourhood frame, see eg (Hansen-Kupke-Pacuit 2009).

An ordered bisimulation $R:(X,\xi)\looparrowright (Y,\nu)$ between ordered neighbourhood frames satisfies (see the case of $U$-bisimulations above)
$$ xRy \ \Rightarrow \ \xi x \supseteq \nu y,$$

or, more explicitely, [^xtoa]
\begin{align}
xRy \ \ \Rightarrow \ \ & \forall y\to b.\exists x\to a. \forall y'\in b.\exists x'\in a. x'Ry' 
\end{align}

[^xtoa]: We write $x\to a$ for $a\in\xi x$, and similarly for $y\to b$, etc.

Can this be simplified using the ordered version of $R$-coherent pairs?

Remember that $(a,b)\in R^\partial$ is defined as $R[a]\subseteq b$, that is, $\forall x\in a. \exists y\in b.xRy$. Similarly,[^Ro] $(b,a)\in {R^o}^\partial$ iff $R^o[b]\subseteq a$, that is, $\forall y\in b. \exists x\in a.xRy$. 

So we can summarise as follows.

**Proposition:** The weakening relation $R:(X,\xi)\looparrowright (Y,\nu)$  is a $UD$-bisimulation iff
$$xRy \ \ \Rightarrow \ \ 
\forall y\to b.\exists x\to a. 
(b,a)\in {R^{o}}^\partial$$

and $R$ is a $DU$-bisimulation iff
$$xRy \ \ \Rightarrow \ \ 
\forall x\to a.\exists y\to b. 
(a,b)\in R^\partial$$



## Discrete neighbourhood models

We noted before that the definition of ordered bisimulations does not depend on the functor preserving weak pullbacks. So what do we obtain if we apply the definition to neighbourhood frames?

For this we need the posetification of $TX=2^{2^X}$ and of $TX = U\mathcal PX$ where $\mathcal P$ is powerset. 

Have I done this before? Maybe in one of the papers with Adriana, Jirka, or Fredrik?

... tbc ...

**Example:** For a starter we can illustrate what happens in the case of Kripke frames, that is, coalgebras $X\to\mathcal PX$. The posetification of $\mathcal P$ is the convex powerset functor $\mathcal{\overline P}$. $R$ is a $\mathcal{\overline P}$-bisimulation iff
$$xRy \ \ \Rightarrow \ \ \xi x \le_{\mathcal{\overline P}R} \nu y,$$

which, by definition[^eglimilner] of the order on $\mathcal{\overline P}R$, unfolds to 

\begin{align}
xRy \ \ \Rightarrow \ \ & \forall x\to x'.\exists y\to y'.  x'Ry' \ \ \textrm { and }\\  
& \forall y\to y'.\exists x\to x'.  x'Ry' \\  
\end{align}





## ...



## References

Hansen, Kupke and Pacuit: [Neighbourhood Structures: Bisimilarity and Basic Model Theory](\href{https://arxiv.org/pdf/0901.4430), 2009 

Worrell: [Coinduction for recursive data types: partial orders, metric spaces and omega-categories](https://www.sciencedirect.com/science/article/pii/S1571066105803561), CMCS 2000.

## Further Reading

Aczel:

Aczel, Mendler:

Lawvere:

Rutten:

[^eglimilner]: Given a preorder/poset $X$, the order on the convex powerset of $X$ is defined by $(a,b)\in \mathcal{\overline P}X$ if $\forall x\in a.\exists y\in b. x\le y$ and $\forall y\in b.\exists x\in a. x\le y$.

[^Ro]: If $R:X\looparrowright Y$ is a weakening relation then $R:Y^o\looparrowright X^o$ is the opposite relation. In the discrete case it coincides with $R^{-1}$.


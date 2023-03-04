---
tags: coalgebraic logic, coalgebraic modal logic, maths, functorial modal logic
---

#  Cospan Bisimulation 

(draft) ... ([index](https://hackmd.io/@alexhkurz/Hy1oUrS4u))

Previous:
- [Modal Logic on Posets](https://hackmd.io/uvH1hEqBTE6uJKlI0qSRAA)
- [Neighbourhood Frames over Posets](https://hackmd.io/Kaf6xVVMRP2w7a9hTLjT2w)

Next:
- [Cospan Bisimulation 2](https://hackmd.io/jxfudz7SQpmj5BzZkyWZIA)

Others;
- [Bisimulation for Order-Enriched Coalgebras](https://hackmd.io/@alexhkurz/SJZPcfMdv)
- [Extending Functors from Orders to Relations](https://hackmd.io/@alexhkurz/Syilr93_w)

---

One of the starting points of coalgebra was Aczel's discovery, see also (Rutten, 2000), that span-bisimulation, also known as Aczel-Mendler bisimulation, can capture category theoretically the combinatorial notion of bisimulation. 

From an axiomatic point of view, one drawback of span-bisimulations is that, in order to for span-bisimulations to capture the coalgebraic notion of equivalence (aka behavioural equivalence), the coalgebra-functor needs to weakly preserve pullbacks (=preserve weak pullbacks). 

In their proof of the final coalgebra, in order to not depend on this assumption, Aczel and Mendler work with quotients and cospans instead of spans. What they call precongruences can be considered as a precursor to the notion of cospan-bisimulation, defined below.

One disadvantage of cospans in Set is that they do not allow us to capture general relations. This can be circumvented by working poset enriched. 

[Recall](https://hackmd.io/V6m2cAy_TdagteE4RG_sbw) that
- for every relation $R\subseteq X\times Y$ the collage $\mathbf R$ is the poset on the disjoint union $X+Y$ encoding $R$.
- for every functor $T:Set\to Set$ there is a preordification $\overline T:Pre\to Pre$. [^preordification]


**Definition (cospan-bisimulation):** Let $T:Set\to Set$ be a functor. A relation $R\subseteq X\times Y$ is a *cospan bisimulation* between coalgebras $X\stackrel\xi\longrightarrow TX$ and  $Y\stackrel\nu\longrightarrow TY$ if the unique arrow $\mathbf R\to\overline T \mathbf R$ that makes the diagram

$$
\begin{array}{}
X  & \rightarrow & \mathbf R & \leftarrow & Y\\
\downarrow &&\downarrow && \downarrow \\
TX  & \rightarrow & \overline T\mathbf R & \leftarrow & TY
\end{array}
$$

commute is order preserving. As we will see now, this notion does also work well in case of set-functors that do not preserve weak pullbacks. But let us first start with the familiar case of Kripke frames.


## Kripke models

For a starter we can illustrate what happens in the case of Kripke frames, that is, $T=\mathcal P$ is the powerset functor. 

**Proposition** (Balan et al, 2015): The posetification of $\mathcal P$ is the convex powerset functor $\mathcal{\overline P}$. 

By definition, then, $R$ is a cospan-bisimulation iff
$$xRy \ \ \Rightarrow \ \ \xi x \le_{\mathcal{\overline P}R} \nu y,$$

which, by definition[^eglimilner] of the order on $\mathcal{\overline P}\mathbf R$, gives us the usual definition of a bisimulation on Kripke frames (to emphasise the coalgebraic nature of Kripke frames we write $x'\in\xi(x)$ instead of $x\to x'$ and $y'\in\nu(y)$ instead of $y\to y'$). 

**Corollary:** $R$ is a cospan-bisimulation between Kripke frames $\xi:X\to TX$ and $\nu:Y\to TY$ iff $xRy$ implies

\begin{gather}
\forall x'\in\xi(x).\exists y'\in\nu(y).  x'Ry' \\[1ex]
\textrm { and }\\[1ex]
\forall y'\in\nu(y).\exists x'\in\xi(x).  x'Ry' \\  
\end{gather}



## Monotone Neighbourhood Coalgebras

In this subsection we look at coalgebras for the functor $Up\mathcal P:Set\to Set$ and the associated notion of cospan-bisimulation induced by its posetification $\overline{Up\mathcal P}$. For cospan-(bi)simulations for related functors $Pos\to Pos$ see the section on [Montone Neighbourhood Coalgebras](https://hackmd.io/Kaf6xVVMRP2w7a9hTLjT2w).


**Proposition** (Corollary 5 in Dahlqvist and Kurz, 2017): The preordification of the monotone neighbourhood functor $T=Up\mathcal P$ is $\mathcal D \mathcal U$ ordered by
$$A\le B \quad\stackrel{def}\Longleftrightarrow\quad \forall a\in A.\exists b\in B. {\uparrow}b \subseteq {\uparrow} a \ \ \ \textrm{and} \ \ \  \forall b\in B.\exists a\in A. {\downarrow} a \subseteq {\downarrow} b$$ 

for all $A,B\in \mathcal D\mathcal UX$.

The proof relies on the following lemma, see also Proposition 8.25 in (Hansen, 2003).

**Lemma:**  Let $R\subseteq X\times Y$ with projections $\pi_1:R\to X$, $\pi_2:R\to Y$ onto. There is a $C\in TR$ s.t.
\begin{gather*}
\forall a\in A\,.\,\exists c\in C\,.\, \pi_1[c]\subseteq a\\ 
\forall c\in C\,.\,\pi_1[c]\in A\\
\forall b\in B\,.\,\exists c\in C\,.\, \pi_2[c]\subseteq b\\
\forall c\in C\,.\,\pi_2[c]\in B
\end{gather*}
if and only if
\begin{gather*}
\forall a\in A\,.\,\exists b\in B\,.\,\forall y\in b\,.\,\exists x\in a\,.\, xRy\\ 
\forall b\in B\,.\,\exists a\in A\,.\,\forall x\in a\,.\,\exists y\in b\,.\, xRy
\end{gather*}

**Remark:** "only if" does not need the $\pi_i$ to be onto. 

*Proof of the Proposition:* Recall that $Tf={\uparrow}f[-]$. By definition (see Sec 3.3 in Dahlqvist and Kurz, 2017), the posetification has $A\le B$ if there is $C$ such that ${\uparrow}\pi_1[C]=A$ and ${\uparrow}\pi_2[C]=B$, which is equivalent to the left-hand side of the lemma. On the other hand, the definition of $A\le B$ in the proposition is equivalent to the right-hand side of the lemma. Finally, notice that the $\pi_i$ are onto because the order is reflexive (and $T$ preserves surjections).

We have shown that cospan-bisimulations capture Pauly's notion of bisimulation for neighbourhood frames:

**Corollary:** $R$ is a cospan-bisimulation between monotone neighbourhood frames $\xi:X\to TX$ and $\nu:Y\to TY$ iff $xRy$ implies 

\begin{gather*}
\forall a\in\xi(x)\,.\,\exists b\in\nu(y)\,.\,\forall y\in b\,.\,\exists x\in a\,.\, xRy\\ 
\forall b\in\nu(y)\,.\,\exists a\in\xi(x)\,.\,\forall x\in a\,.\,\exists y\in b\,.\, xRy
\end{gather*}


## Neighbourhood Coalgebras

In this subsection we take $TX=2^{2^{X}}$.

**Proposition** (Theorem 8 in Dahlqvist and Kurz, 2017): The posetification of the neighbourhood functor $2^{2^-}$ maps a poset $X$ to the $2^{2^{CX}}$ where $C$ takes connected components. (CHECK whether this is also true for the preordification.)

Recall that, given $R\subseteq X\times Y$, we have [^PR]


$$(a,b)\in \overline{\mathcal P}R \quad \Longleftrightarrow \
(\forall x\in a.\exists y\in b. xRy) \ \& \  
(\forall y\in b.\exists x\in a. xRy)$$ 

**Corollary:** $R$ is a cospan-bisimulation between neighbourhood frames $\xi:X\to TX$ and $\nu:Y\to TY$ iff $xRy$ implies
$$\forall a\in\xi(x).\exists b \in \nu(y). (a,b)\in\overline{\mathcal P}R \quad \textrm{and}\quad
\forall b\in\nu(y).\exists a \in \xi(x). (a,b)\in\overline{\mathcal P}R$$

*Proof:* Let $D:Set\to Pos$ be the discrete functor (apologies for using the same letter for the downset-functor). $R$ is a cospan-bisimulation if the middle arrow in the diagram below is order-preserving.

$$
\begin{array}{}
DX  & \stackrel{i}\longrightarrow & \quad \mathbf R \quad & \stackrel{j}\longleftarrow & DY\\
D\xi\Bigg\downarrow \quad &&\Bigg\downarrow && \quad\Bigg\downarrow D\nu \\
DTX\cong\overline TDX  & \stackrel{\overline Ti}\longrightarrow & \overline T\mathbf R & \stackrel{\overline Tj}\longleftarrow & \overline TDY\cong DTY
\end{array}
$$

$\mathbf R\to \overline T\mathbf R$ is order-preserving iff $xRy$ implies that $\overline Ti (D\xi(x))=\overline Tj(D\nu(y))$, that is, 
$$\{c\subseteq C\mathbf R \mid \exists a\in\xi(x). i^{-1}(c)=a\} 
\quad =\quad 
\{c\subseteq C\mathbf R \mid \exists b\in\nu(y). j^{-1}(c)=a\}$$

where $C$ takes connected components. "$\subseteq$" can be written as 

$$\forall a\in\xi(x). \exists b\in\nu(y).i^{-1}(a) = j^{-1}(b)$$

which is equivalent to 

$$\forall a\in\xi(x).\exists b\in\nu(y).
\ (\forall x\in a.\exists y\in b. xRy) \ \& \ 
(\forall y\in b.\exists x\in a. xRy) $$

and similarly for "$\supseteq$".

## More Examples?

probabilistic bisimulation would be worth a look

... other, less well-known, examples?

## Results

We will get the expected results. For $T:Set\to Set$, cospan bisimulation

- agrees with span bisimulation if $T$ preserves weak pullbacks

- captures behavioural equivalence without assumptions on $T$

- coalgebraic logic is invariant under cospan-bisimulations

- ... ? 

Could there be theorems linking cospan-bisimulations to cospan-simulations? 

- What are conditions on $T:Set\to Set$ so that there is a forward version $T^\rightarrow:Pos\to Pos$ and a backward version $T^\leftarrow:Pos\to Pos$? Can we say sth general here or must this be done on an adhoc basis for particlar $T$?

- ...



## References

Balan, Kurz and Velebil: [Positive Fragments of Coalgebraic Logics](https://arxiv.org/pdf/1402.5922.pdf). LMCS 2015.

Dahlqvist and Kurz: [The Positivication of Coalgebraic Logics](http://drops.dagstuhl.de/opus/volltexte/2017/8042/pdf/LIPIcs-CALCO-2017-9.pdf). CALCO 2017. (Section 3.3 and 3.4)

Hansen: [Monotonic modal logics](https://eprints.illc.uva.nl/id/document/264). 2003. (Def 4.10, Def 8.20, Prop 8.25)

Hansen, Kupke and Pacuit: [Neighbourhood Structures: Bisimilarity and Basic Model Theory](https://arxiv.org/pdf/0901.4430). LMCS 2009. (Def 3.5, Thm 3.12)

Pauly: [Logic for Social Software](https://hdl.handle.net/11245/1.194561). 2001. (Thm 6.5)

Worrell: [Coinduction for recursive data types: partial orders, metric spaces and $\Omega$-categories](https://www.sciencedirect.com/science/article/pii/S1571066105803561), CMCS 2000. (Def 5.2)


## Further Reading

Aczel:

Aczel, Mendler:

Hansen, Kupke and Pacuit: [Neighbourhood Structures: Bisimilarity and Basic Model Theory](\href{https://arxiv.org/pdf/0901.4430). LMCS 2009.

Lawvere:

Rutten:


[^preordification]: Much of the following would also work for the posetification $\overline T:Pos\to Pos$. The one property that we only have for the preordification is $V\overline T \cong TV$ where $V$ the forgetful functor to $Set$.

[^eglimilner]: Given a preorder/poset $X$, the order on the convex powerset of $X$ is defined by $(a,b)\in \mathcal{\overline P}X$ if $\forall x\in a.\exists y\in b. x\le y$ and $\forall y\in b.\exists x\in a. x\le y$.

[^PR]: $a\subseteq R^{-1}[b]$ and $b\subseteq R[a]$.




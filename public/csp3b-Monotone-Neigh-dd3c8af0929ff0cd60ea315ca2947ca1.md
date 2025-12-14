# Montone Neighbourhood Coalgebras

(draft)

## Introduction

The idea of this section is to run through parts of [HK04] and adapt it to *ordered* neighbourhood frames. It could also be interesting to study *metric* neighbourhood frames.

The neighbourhood frames of modal logic are coalgebras for the functor $Up\mathcal P$ [HK04,Lem.3.4]. Here, $Up\mathcal P X=\{A\subseteq \mathcal P(\mathcal PX) \mid a\in A, a\subseteq a' \Rightarrow a'\in A\}$. On functions, we have 

$$Up\mathcal P\  f\ A = {\uparrow}\{f[a] \mid a\in A\}.$$

There are three well-known ways of extending powerset to orders. In domain theory, they are known as the upper, lower and convex powerdomain, and also known under the names of Hoare, Smyth and Plotkin, respectively. They correspond to the downset functor $\mathcal D$, the upset functor $\mathcal U$ and the convex powerset functor $\overline{\mathcal P}$. The first two arise from ordering powerset by inclusion and reverse inclusion. The third arises as the posetification of the powerset.

Similarly, there are three ways to extend the monotone neighbourhood functor $Up\mathcal P$ to posets.

Recall that on objects $\mathcal UX=[X,2]^o$ and $\mathcal DX = [X^o,2]$. As a functor (and as a monad) 

$$\mathcal D\mathcal U X=[[X,2],2]$$ 

and 

$$\mathcal U\mathcal DX=[[X^o,2],2]^o.$$ 

On discrete $X$, we have $\mathcal D\mathcal UX = (\mathcal U\mathcal DX)^o$, so both are legitimate order generalisations of the functor $Up\mathcal P$.

Finally, there is also the posetification $\overline{Up\mathcal P}$.

We derive the notions of [cospan (bi)simulation](https://hackmd.io/MMxanF1vQ1KgZ7BThVCoGw) of the functors $\mathcal D\mathcal U$ and $\mathcal U\mathcal D$ and $Up\mathcal P$.

## Coalgebra Morphisms

**Proposition:** $f$ is a morphism of $\mathcal D\mathcal U$-coalgebras iff
\begin{gather}
\forall a\in \xi x.\exists b\in\nu(fx).\forall y\in b.\exists x\in a. fx \le y\\[1ex]
\forall b\in \nu(fx).\exists a\in\xi(x).\forall x\in a.\exists y\in b. \ y\le fx
\end{gather}

$f$ is a morphism of $\mathcal D\mathcal U$-coalgebras iff

\begin{gather}
\forall a\in \xi x.\exists b\in\nu(fx).\forall y\in b.\exists x\in a. fx \ge y\\[1ex]
\forall b\in \nu(fx).\exists a\in\xi x.\forall x\in a.\exists y\in b. y \ge fx 
\end{gather}

$f$ is a morphism of $\overline{Up\mathcal P}$-coalgebras if


Morphisms of $\mathcal D\mathcal U$ and $\mathcal U\mathcal D$-coalgebras coincide on discrete coalgebras. Here is an attempt at a visual summary:

![](https://i.imgur.com/a1wXKKp.png =400x600)

## Morphisms as Relations

In sets every function is a relation and every coalgebra morphism a bisimulation. In ordered sets every function $f:X\to Y$ gives rise to two relation $f_\diamond:X\looparrowright Y$ and $f^\diamond: Y\looparrowright X$ with

$$ (x,y)\in f_\diamond \ \Leftrightarrow \ fx\le y
\quad\quad\quad\quad
(y,x)\in f^\diamond \ \Leftrightarrow \ y\le fx$$

We have shown in [Cospan Bisimulations 2](https://hackmd.io/jxfudz7SQpmj5BzZkyWZIA) that these relations are cospan (bi)simulations if $f$ is a coalgebra morphism. This example suggests that more is true.

**Proposition:** $f$ is a morphism of $\mathcal D\mathcal U$-coalgebras iff $f_\diamond$ and $f^\diamond$ are cospan-(bi)simulations.

*Proof:* We only need to instantiate the characterisation of $\mathcal D\mathcal U$-cospan-(bi)simulation from the section on [Bisimulation for Ordered Coalgebras](https://hackmd.io/V6m2cAy_TdagteE4RG_sbw#Ordered-neighbourhood-coalgebras).

An analogous statement is true for $\mathcal U\mathcal D$-coalgebras (CHECK).

## Modal Logic 

![](https://i.imgur.com/1FLZ0fs.png =80x80)

(WHERE DO WE SEE THE DIFFERENCE BETWEEN THE TYPES OF COALGEBRAS IN THE LOGICS?)

**Def:**  The two-sorted modal logic for ordered neighbourhood frames has point-formulas $\phi$ and set-formulas $\psi$ given as

\begin{align*}
\phi &::= \Box\psi \mid \phi\wedge\phi \mid \phi\vee\phi \mid p \\[1ex]
\psi &::= \Diamond\phi \mid \psi\wedge\psi \mid \psi\vee\psi
\end{align*}

and axioms saying that $\Box$ preserves finite meets and $\Diamond$ preserves finite joins.

**Remark:** This logic can be derived from the semantics using the principles of functorial modal logic (FML). This construction then guarantees the following proposition.

**Prop:** Formulas are invariant under morphisms and behavioural equivalence. Moreover, the logic is sound and complete for ordered neighbourhood models.

## References

Dahlqvist and Kurz: [The Positivication of Coalgebraic Logics](http://drops.dagstuhl.de/opus/volltexte/2017/8042/pdf/LIPIcs-CALCO-2017-9.pdf). CALCO 2017. (Section 3.3 and 3.4)

Hansen, Kupke: [A Coalgebraic Perspective on Monotone Modal Logic](https://www.sciencedirect.com/science/article/pii/S1571066104051722/pdf). 2004.

M. Pauly. Bisimulation for general non-normal modal logic. Manuscript, 1999.


[^DUmorphism]: We have the following equivalences:
    \begin{gather}
(\mathcal D\mathcal Uf\circ\xi)\,x \subseteq (\nu\circ f)\,x \\[1ex]
\forall a\in \xi(x).\ \mathcal Uf(a)\in\nu(f(x)) \\[1ex]
\forall a\in \xi(x).\exists b\in\nu(fx).\ \mathcal Uf(a)\supseteq b \\[1ex]
\forall a\in \xi x.\exists b\in\nu(fx).\forall y\in b.\exists x\in a. fx \le y
\end{gather}

    and
    
    \begin{gather}
(\mathcal D\mathcal Uf\circ\xi)\,x \supseteq (\nu\circ f)\,x \\[1ex]
\forall b\in \nu(fx).\exists a\in\xi(x).\ \mathcal Uf(a)\subseteq b \\[1ex]
\forall b\in \nu(fx).\exists a\in\xi(x).\forall x\in a.\exists y\in b. \ y\le fx
\end{gather}
    
    
[^UDmorphism]: We have the following equivalences:
    \begin{gather}
(\mathcal U\mathcal Df\circ\xi)\,x \subseteq (\nu\circ f)\,x\\[1ex]
\forall a\in \xi x.\ \mathcal Df (a) \in \nu(fx)\\[1ex]
\forall a\in \xi x.\exists b\in\nu(fx).\ \mathcal Df (a) \supseteq b\\[1ex]
\forall a\in \xi x.\exists b\in\nu(fx).\forall y\in b.\exists x\in a. fx \ge y
\end{gather}

    and

    \begin{gather}
(\mathcal U\mathcal Df\circ\xi)\,x \supseteq (\nu\circ f)\,x\\[1ex]
\forall b\in \nu(fx).\exists a\in\xi x.\ \mathcal Df (a) \subseteq b\\[1ex]
\forall b\in \nu(fx).\exists a\in\xi x.\forall x\in a.\exists y\in b. y \ge fx 
\end{gather}













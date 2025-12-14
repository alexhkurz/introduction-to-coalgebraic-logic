# Neighbourhood Coalgebras

(draft) 

The idea of the following is to run through (Hansen, Kupke, Pacuit, 2009) and analyse it from the point of view of cospan bisimulation.

**Def:** Let $R\subseteq X\times Y$. The dual relation $R^\partial:2^X\looparrowright 2^Y$ is defined by $R[a]\subseteq b$.

**Remark:** $(a,b)$ are called $R$-coherent in Def 2.1 of Hansen-Kupke-Pacuit if $(a,b)\in R^\partial$ and $(b,a)\in (R^{-1})^\partial$.

Recall that the connected component functor $C:Ord\to Set$ is left-adjoint to the discrete functor $D:Set\to Ord$. Also recall that the ordification of the neighbourhood functor is $D2^{2^{C-}}, see Theorem 8 in [DK17] and the section on [Cospan Bisimulation](https://hackmd.io/6Ehr9bIQQgSZKeeasdSKoQ#Neighbourhood-Coalgebras).

**Definition:** A neighbourhood frame is a set $X$ with a function $X\to 2^{2^X}$. An ordered neighbourhood frame is an ordered set $X$ with an order-preserving function $X\to D2^{2^{CX}}$.

**Remark:** The function $f:X\to Y$ in $Set$ [^ordmorph] is a coalgebra morphism from $\xi:X\to 2^{2^X}$ to $\nu:Y\to 2^{2^Y}$ iff
\begin{gather}
\forall a\in\xi(x).\exists b \in \nu(y). (\forall x\in a.\exists y\in b. fx=y) \ \& \ (\forall y\in b.\exists x\in a. fx=y)\\[1ex]
\forall b\in\nu(y).\exists a \in \xi(x). (\forall x\in a.\exists y\in b. fx=y) \ \& \ (\forall y\in b.\exists x\in a. fx=y)
\end{gather}


**Remark:** Similarly, $R$ is a bisimulation if $xRy$ implies

\begin{gather}
\forall a\in\xi(x).\exists b \in \nu(y). (\forall x\in a.\exists y\in b. xRy) \ \& \ (\forall y\in b.\exists x\in a. xRy)\\[1ex]
\forall b\in\nu(y).\exists a \in \xi(x). (\forall x\in a.\exists y\in b. xRy) \ \& \ (\forall y\in b.\exists x\in a. xRy)
\end{gather}


## References

Hansen, Kupke, Pacuit: [Neighbourhood Structures: Bisimilarity and Basic Model Theory](https://arxiv.org/pdf/0901.4430). 2009. (Definition 2.1., ...)

Dahlqvist and Kurz: [The Positivication of Coalgebraic Logics](http://drops.dagstuhl.de/opus/volltexte/2017/8042/pdf/LIPIcs-CALCO-2017-9.pdf). CALCO 2017. (Section 3.3 and 3.4)

[^ordmorph]: The function $f:X\to Y$ in $Ord$ is a coalgebra morphism from $\xi:X\to D2^{2^{CX}}$ to $\nu:Y\to D2^{2^{CY}}$ iff

    \begin{gather}
\forall a\in\xi(x).\exists b \in \nu(y). (\forall x\in a.\exists y\in b. fx=y) \ \& \ (\forall y\in b.\exists x\in a. \overline{fx}=\overline y)\\[1ex]
\forall b\in\nu(y).\exists a \in \xi(x). (\forall x\in a.\exists y\in b. fx=y) \ \& \ (\forall y\in b.\exists x\in a. \overline{fx}=\overline y)
\end{gather}

    where $\overline{y}$ denotes the connected component of  $y$.

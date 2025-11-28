# Coalgebras over Preorders 

(draft ... reference to be added)

The notion of "bisimulation" canonically associated to a functor $T:\sf Ord\to Ord$ on ordered sets is typically not a **bi**simulation but a (forward or backward) **simulation**. But, depending on the choice of $T$, it can include ordinary bisimulation as well. I therefore decided to call it (bi)simulation.

Simulations are one of the main reasons to be interested in coalgebras over orders. Of course, orders are also interested in their own right. Moreover, order-enriched category theory is similar to quantale-enriched category theory, which allows to include metric bisimulations in the coalgebraic setting.

For the remainder of this introduction, we review some of the material of the note on [powerdomains](https://hackmd.io/@alexhkurz/r1SJ8lizO) with the category of preorders instead of posets. We start again with

![](https://i.imgur.com/wpaU0or.png)

but we now allow $X,X'$ to be preorders (and require all maps to be order-preserving). We consider three versions of $\mathcal P$ according to whether $\mathcal PX$ is equipped with any of the following orders:

$$
\begin{array}{|c|c|c|l|}
\hline
\mathcal P & (\mathcal PX, \equiv) 
& \textrm{bisimulation} 
& a \equiv b \ \Longleftrightarrow \ \forall x\in a\exists y\in b(x\le y) \ \& \ \forall y\in b\exists x\in a(x\le y) \\ \hline
\mathcal U & (\mathcal PX, \sqsubseteq) 
& \textrm{forward simulation} 
& a \sqsubseteq b \ \Longleftrightarrow \ \forall x\in a\exists y\in b(x\le y) 
\\ \hline
\mathcal D & (\mathcal PX, \sqsupseteq) 
& \textrm{backward simulation} 
& a \sqsupseteq b \ \Longleftrightarrow \ \forall y\in b\exists x\in a(x\le y) \\ \hline
\end{array}
$$

Coalgebra homomorphisms are still (functional) bisimulations in all cases but (bi)simulations and the final coalgebra  can now have a richer structure. 

**Remark:** Note that $\mathcal U$ and $\mathcal D$ are on preorders (as opposed to on posets) not defined by taking up- or downsets. Both take arbitrary subsets preordered as indicated. If these preorders are quotiented by equivalence, then the order on the quotient of $\mathcal UX$ is isomorphic to inclusion of upsets and  and the order on the quotient of $\mathcal DX$ is isomorphic to reverse inclusion of downsets.

**Remark:** The forgetful functor $V:\sf Pre\to Set$ has the discrete functor $D$ as an ordinary left adjoint. Moreover, in the three examples above, $VT\cong\mathcal PV$. It follows by [doctrinal adjunction](https://hackmd.io/@alexhkurz/rk41nDC_w) that $V$ lifts to right-adjoint between categories of coalgebras. Since right adjoints preserve final objects, forgetting the order of the final $T$-coalgebra gives us the final $\mathcal P$-coalgebra. In other words, in each of the three cases, equality on the final coalgebra is ordinary bisimilarity. (This is not true if we replace preorders by posets because bisimulation is stronger than forward and backward simulation.)



# Monotone Predicate Liftings

(previous: [Predicate Liftings](https://hackmd.io/@alexhkurz/SJcARPMVO))

---

We have studied modal operators as predicate liftings
$$\mathcal P 2\to 2$$

where $\mathcal P 2$ can be pictured as 

![](https://i.imgur.com/VKicAZA.png =400x)

Which order on $\mathcal P2$ exhibits the monotone modal operators as exactly the monotone predicate liftings?

The answer is given by the so-called posetification [^posetification] 
$$\overline{\mathcal P}:\sf Pos\to Pos$$

of the functor $\mathcal P:\sf Set\to Set$.

**Fact:** $\overline{\mathcal P}$ is the convex powerset functor, that is, for two convex subsets $a,b\subseteq X$ we have 
\begin{align}
a\le b\  \quad \textrm{ iff } \quad & \forall x\in a\,.\,\exists y\in b. x\le y \quad \textrm{ and }\\
&\forall y\in b\,.\,\exists x\in a. x\le y\\
\end{align}

**Exercise:** Recall that $2=\{0<1\}$. The order on $\overline{\mathcal P}2$ is given by $\{0\}<\{0,1\}<\{1\}$:

![](https://i.imgur.com/D8YrRFK.png =300x)

It follows that there are $2\times 4$ monotone predicate liftings $\overline{\mathcal P}2\to 2$. The 4 upsets of the chain are
$$ \{\overline 0,\overline{01},\overline 1\}, \{\overline{01},\overline 1\},  \{\overline 1\}, \{\}$$

We can now list all monotone predicate liftings as follows.

|subset of $\mathcal P2$| Boolean combination of generators | modal formula 
|:---:|:---:|:---:|
|$\{\}$| $\bot$ | $\bot$ |
|$\{\overline 1\}$| $\sf \neg o\wedge i$ | $\Box\phi\wedge\Diamond\phi$ |
|$\{\overline{01},\overline 1\}$| $\sf i$ | $\Diamond\phi$ |
|$\{\overline 0,\overline{01},\overline 1\}$| $\sf o\vee i$ | $\Diamond\top$ |
|$\{\varnothing\}$| $\sf \neg o\wedge\neg i$ | $\Box\bot$ |
|$\{\varnothing,\overline 1\}$| $\sf \neg o$ | $\Box\phi$ |
|$\{\varnothing,\overline{01},\overline 1\}$| $\sf \neg o\vee i$ | $\Box\phi\vee\Diamond\phi$ |
|$\{\varnothing,\overline 0,\overline{01},\overline 1\}$| $\sf o\vee i$ | $\top$ |

## Summary

We have seen that in the example of the powerset functor that the monotone modal operators correspond precisely to the monotone functions  $\overline{\mathcal P}2\to 2$ where $\overline{\mathcal P}$ is the convex powerset functor.

More generally, for any set-functor $T$, the $n$-ary monotone modal operators (=predicate liftings) are in bijection to the monotone functions 
$$\overline T(2^n)\to 2$$

where $\overline T$ is the posetification of $T$.


## References

The definition of the posetification (extension from $\sf Set$ to $\sf Pos$) of an arbitrary set-functor as well as the result on monotone predicate liftings is in

Balan, Kurz, Velebil: [Positive Fragments of Coalgebraic Logics](https://lmcs.episciences.org/1594). 2015.

[^posetification]: The posetification of a functor $T$ is defined as follows. Any poset $(X,R)$ can be represented by its "graph"
$$p_1,p_2:R\to X$$

	Moreover, one can reconstruct the poset $(X,R)$ as a certain order-enriched colimit of the diagram $p_1,p_2:R\to X$. Then the posetification $\overline TX$ is defined as the said colimit of $Tp_1,Tp_2:TR\to TX$. 
	
	The posetification enjoys the universal property of an order-enriched left Kan extension.




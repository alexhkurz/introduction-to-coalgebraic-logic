# Coalgebraic Logic: One-Step Properties

Given functors $T:\sf Set\to Set$ and $L:\sf BA\to BA$ and the contravariant adjunction "homming into $2$"
$$ P:\sf Set \leftrightarrow BA : S$$

the meaning of the logic $L$ is determined by 
$$LP\to PT$$

Moreover, $LP\to PT$ determines, and is determined by, its so-called mate
\begin{gather}
TS\to SL
\end{gather}

which maps a one-step behaviour to its theory.

It is possible to express properties of the logic in terms of the properties of these natural transformations. Below 
- $n$ is a finite set, 
- $\twoheadrightarrow$ is onto, 
- $\Rightarrow$ is split epi (onto and has a half-inverse), 
- $\rightarrowtail$ is injective, 
- $\hookrightarrow$ is a section (injective and has a half-inverse).


\begin{array}{|l|l|}
  \hline
  LP\stackrel{}{\rightarrowtail}PT  & \textrm{one-step completeness}
  \\ \hline
  LP\stackrel{}{\twoheadrightarrow}PT & \textrm{all sets of one-step behaviours are definable}
  \\ \hline
  LFn\twoheadrightarrow PTSFn & \textrm{all finitary predicate liftings are definable}
  \\ \hline
  TS\rightarrowtail SL & \textrm{one-step expressiveness}\\
  \hline
  TS\Rightarrow SL & \textrm{canonical (strongly complete)}
  \\ \hline
  T \rightarrowtail SLP & \textrm{separating (non-bisimilar successors are distinguished by a formula)}
  \\ \hline
\end{array}


## References

The algebraic approach to coalgebraic logic was proposed in 

- Kupke, Kurz, Pattinson: [Algebraic Semantics for Coalgebraic Logics](https://alexhkurz.github.io/papers/KKP-cmcs04/cmcs2004.entcs.pdf). 2004.

This paper proves that one-step completeness implies completeness. That one-step expressiveness implies expressiveness is due to 

- Klin: []() ...

...

- Kurz, Rosicky: []() ...








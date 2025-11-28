# Quantalification

## Extending Functors to Quantale Categories

For now, assuming the quantale to be commutative, we refer to [Adriana Balan ; Alexander Kurz ; Jiří Velebil - Extending set functors to generalised metric spaces](https://lmcs.episciences.org/5132) for details. We only extract some information for reference. 

## Examples

### Constant Functor

Let $T:\Set\to\Set$, be a constant functor at a set $S$. Then $\overline T$ acts as follows: For any $\Qu$-category $X$, $\overline TX$ is the constant $\QuCat$-functor to the $\Qu$-category with $S$ as set of objects, with $\Qu$-distances

$$
\overline TX(x',x) = 
\begin{cases} 
\, \top \ \ , \ \ x'=x
\\
\bot \ \ , \ \ \mbox{otherwise}
\end{cases}
$$

That is, $\overline TX = S \cdot \One_\top$ is the coproduct in $\QuCat$ of $S$ copies of the terminal $\Qu$-category $\One_\top$. In case $\Qu$ is integral, we have $\overline T X=D S$.


### Power

Let $T:\Set\to\Set$ be the functor $TX= X^n$, for $n$ a natural number. 
Then $\overline T$ maps a quantale category $X$ to its $n$-th power $X^n$, where 

$$
\begin{equation}
X^n((x'_0,\dots,x'_{n-1}),(x_0,\dots,x_{n-1}))
=
X(x'_0,x_0)\wedge\dots\wedge X(x'_{n-1},x_{n-1}).
\end{equation}
$$

If $n$ is an {\em arbitrary\/} cardinal number, the quantalification of 
$T:\Set\to \Set$, $TX=X^n$ also exists and $\overline TX((x'_i),(x_i))=\bigsqcap_i X (x'_i,x_i)$. That is, $\overline TX=X^n$.

### Polynomial Functor

The quantalification of a finitary polynomial functor
$
X\mapsto \coprod_n X^n\coprod \Sigma n
$
is the ``strongly polynomial'' $\Qu$-functor
$
X\mapsto \coprod_n X^n \otimes D\Sigma n
$, where $n$ ranges over finite sets.

In particular, the quantalification of the list functor $LX = X^* = \coprod_n X^n$ maps a $\Qu$-category $X$ to the $\Qu$-category having as objects tuples of objects of $X$, with non-trivial $\Qu$-distances only between tuples of same order

### Powerset Functor

...

### Distribution Functor

...

## References

...
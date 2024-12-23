---
layout: post
title: "General Formula of Fibonacci Sequence"
comments: true
usemathjax: true
---

---

A nice way to solve <a href="https://en.wikipedia.org/wiki/Fibonacci_number">Fibonacci Sequence</a> through <a href="https://en.wikipedia.org/wiki/Generating_function">Generating Function<a/> in <a href="https://en.wikipedia.org/wiki/Introduction_to_Algorithms">CLRS</a>.

First we define a generating function to help we solve this, which is:

$$
\begin{aligned}
\mathcal{F}(z)=&\sum_{i=0}^{\infty}F_i z^i \\
=& 0 + z^1 + z^2 + 2z^3 + 3z^4 + 5z^5 + …  \\
\end{aligned}
$$

$F_i$ represents the $i$th fibonacci number.

------------------------------------------------------------------------

$\textbf{Lemma 1}$

$$\mathcal{F}(z)=z+z\mathcal{F}(z)+z^2\mathcal{F}(z)$$

$\textit{Proof.}$

$$
\begin{aligned}
\mathcal{F}(z)=& \sum_{i=0}^{\infty} \mathcal{F}_i z^i\\
=& \mathcal{F}_{0} z^0 + \mathcal{F}_{1} z^1 + \sum_{i=2}^{\infty} \mathcal{F}_i z^i\\
=& z + \sum_{i=2}^{\infty} (\mathcal{F}_{i-1} + \mathcal{F}_{i-2}) z^i \\
=& z + z \sum_{i=2}^{\infty} \mathcal{F}_{i-1} z^{i-1} + z^2 \sum_{i=2}^{\infty} \mathcal{F}_{i-2} z^{i-2} \\
=& z + z\mathcal{F}(z) + z^2\mathcal{F}(z)
\end{aligned}
$$

------------------------------------------------------------------------

$\textbf{Lemma 2}$

$$\mathcal{F}(z)=\frac{z}{1-z-z^2}$$

$\textit{Proof.}$

$$
\begin{aligned}
\mathcal{F}(z)=& \mathcal{F}(z) \cdot \frac{1-z-z^2}{1-z-z^2} \\
=& \frac{\mathcal{F}(z) - z\mathcal{F}(z) - z^2\mathcal{F}(z) - z + z}{1 - z - z^2} \\
=& \frac{\mathcal{F}(z) - \mathcal{F}(z) + z}{1 - z - z^2}  && (\text{Applying Lemma 1})\\
=& \frac{z}{1 - z - z^2}
\end{aligned}
$$

------------------------------------------------------------------------

$\textbf{Lemma 3}$

$$\mathcal{F}(z)=\frac{1}{\sqrt{5}} (\frac{1}{1-\phi z}-\frac{1}{1+\phi \hat{z}})
, \text{ where } \phi=\frac{1+\sqrt{5}}{2} \text{ and } \hat{\phi}=\frac{1-\sqrt{5}}{2}$$

$\textit{Proof.}$


Trivally, $\phi \hat{\phi}=-1$, $\phi + \hat{\phi}=1$, and $\phi - \hat{\phi}=\sqrt{5}$, combining Lemma 2:

$$
\begin{aligned}
\mathcal{F}(z)=& \frac{z}{1 - (\phi + \hat{\phi})z + (\phi \hat{\phi})z^2} \\
=& \frac{z}{(1 - \phi z)(1 - \hat{\phi} z)} \\
=& \frac{\sqrt{5} z + 1 - 1}{\sqrt{5} (1 - \phi z)(1 - \hat{\phi} z)} \\
=& \frac{(\phi - \hat{\phi}) z + 1 - 1}{\sqrt{5} (1 - \phi z)(1 - \hat{\phi} z)} \\
=& \frac{(1 - \hat{\phi} z) - (1 - \phi z)}{\sqrt{5} (1 - \phi z)(1 - \hat{\phi} z)} \\
=& \frac{1}{\sqrt{5}} (\frac{1}{1 - \phi z} - \frac{1}{1 - \hat{\phi} z})
\end{aligned}
$$

------------------------------------------------------------------------

Given when $-1 < x < 1, \sum_{i=1}^{\infty} x^i = \frac{1}{1 - x}$ (check <a href="#reference_2">[2]</a>).

$$
\begin{aligned}
\mathcal{F}(z)=& \frac{1}{\sqrt{5}} (\frac{1}{1 - \phi z} - \frac{1}{1 - \hat{\phi} z}) \\
=& \frac{1}{\sqrt{5}} (\sum_{i=1}^{\infty} \phi^i z^i - \sum_{i=1}^{\infty} \hat{\phi^i} z^i) \\
=& \sum_{i=1}^{\infty} \frac{1}{\sqrt{5}} (\phi^i - \hat{\phi^i}) z^i
\end{aligned}
$$

Remember our original form is $\mathcal{F}(z)=\sum_{i=0}^{\infty}F_i z^i$. Therefore, we already get a closed-form formula of i-th fibonacci number $F_i$, which is:

$$
\begin{aligned}
F_i &= \frac{1}{\sqrt{5}} (\phi^i - \hat{\phi^i}) \\
&= \frac{\left(\frac{1 + \sqrt{5}}{2}\right)^i - \left(\frac{1 - \sqrt{5}}{2}\right)^i}{\sqrt{5}}
\end{aligned}
$$

------------------------------------------------------------------------
Reference(s):

[1] <a href="https://walkccc.me/CLRS/">CLRS Solutions</a>. \\
[2] <a name="reference_2" href="http://www.math.toronto.edu/mnica/csplash.pdf">Generating Functions</a>,
U of Toronto. \\
[3] <a href="https://en.wikipedia.org/wiki/Fibonacci_number">Fibonacci Number</a>,
<a href="https://en.wikipedia.org/wiki/Generating_function">Generating Function</a>,
<a href="https://en.wikipedia.org/wiki/Introduction_to_Algorithms">CLRS</a>, Wikipedia. \\
[4] Introduction to algorithms. Cambridge, Mass: MIT Press.

---
layout: post
title: "An Interesting Point Connecting Gradient Descent with Newton's Method"
comments: true
usemathjax: true
---

---

Suppose we are optimizing convex function $f(x)$ at point $x_t$, using gradient descent (with step size $\alpha$) and Newton's method respectively, we'll show an interesting connection between these two different methods.

------------------------------------------------------------------------

$\textbf{Proposition 1}$

For gradient descent, one gradient step at $x_t$ can be formulated as:

$$x_{t+1}=argmin_{x} \left(f(x_t)+\nabla f(x_t)^T\cdot (x-x_t)+(x-x_t)^T\cdot (\alpha*I)\cdot (x-x_t) \right)$$

where $I$ is identity matrix with size fits $x$.

$\textit{Proof.}$ TBA


------------------------------------------------------------------------

$\textbf{Proposition 2}$

For Newton's method, one step at $x_t$ can be formulated as:

$$x_{t+1}=argmin_{x} \left(f(x_t)+\nabla f(x_t)^T\cdot (x-x_t)+(x-x_t)^T\cdot \nabla^2 f(x_t) \cdot (x-x_t) \right)$$

$\textit{Proof.}$ TBA

------------------------------------------------------------------------

Easy to realize the optimization target of reformulated Newton's method is exactly the second-order Taylor expansion of $f$ at $x_t$. And the only difference of above two optimizations is: for gradient descent, it ignores curvature of Hessian matrix $\nabla^2 f(x_0)$ using a diagonal matrix with all $\alpha$, explained why Newton's method has more accurate iteration steps but computationally inefficient.

------------------------------------------------------------------------
Reference(s):

[1] <a href="https://github.com/rishabhk108/AdvancedOptML/blob/main/slides/CS7301_Lecture_4_2.pdf">Rishabh's slides</a>.

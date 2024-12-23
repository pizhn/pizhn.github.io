---
layout: post
title: "Benchmarking Hyperparameter Optimization Algorithms"
comments: true
usemathjax: true
---

---

I benchmarked several hyperparameter optimization algorithms in [Hyperopt.jl](https://github.com/baggepinnen/Hyperopt.jl). Demonstrating some results in this post.

------------------------------------------------------------------------

## Related Library

* [**Hyperopt.jl**](https://github.com/mohamed82008/Nonconvex.jl)

  A hyperparameter optimization package that supports difference sampling strategies including:
  * Random sampling
  * Latin hypercude sampling

  And bandit/bayesian inference for hyperparameters including:

  * [Hyperband](https://arxiv.org/abs/1603.06560)
  * [BOHB](https://arxiv.org/abs/1807.01774) (which was implemented recently by me :p)

* [**Nonconvex.jl**](https://github.com/mohamed82008/Nonconvex.jl)

  A package that encapsulates many algorithms for non-convex (and convex) problem optimization, who also links [**Hyperopt.jl**](https://github.com/mohamed82008/Nonconvex.jl) to optimize starting points for multi-start optimization, by treating starting points as hyperparameter.

* [**CUTEst.jl**](https://github.com/JuliaSmoothOptimizers/CUTEst.jl)

  This package offers a Julia api for [CUTEst](https://github.com/ralna/CUTEst). CUTEst is a repository for testing optimization softwares, who provides a large set of different non-linear programming problems. Here I use some of them to benchmarking algorithms.

------------------------------------------------------------------------

## Benchmark Strategy

I use different hyperparameter optimization algorithms to optimize the starting point of non-linear problems, then compare execution time vs best result so far (regret) for different problems. \\
Here I select several problems in CUTEst, specifically those problems that is large enough to make sure benchmark works well. And they must have a finite bound to perform starting point sampling. Besides, to evaluate the performance when incorporating categorical random variables, I also implemented <em>counting one problem</em> that [BOHB paper](https://arxiv.org/abs/1807.01774) mentions.


------------------------------------------------------------------------

## Result [[code]](https://github.com/noilreed/notebook/tree/main/hyperopt_benchmark)

<span style="color:red">Note that current result is not 100% trustable and the figure sometimes change (they are external image links to my github repo). Because me and Fredrik (author of Hyperopt.jl) are still refactoring and constructing the code of BOHB in Hyperopt.jl. I will remove this warning when they are done.</span>

![benchmark-figure](https://raw.githubusercontent.com/noilreed/notebook/17443f4b700cdbc6842a48307d1b201ced43c310/hyperopt_benchmark/counting_ones.svg "Counting ones")
![benchmark-figure](https://raw.githubusercontent.com/noilreed/notebook/17443f4b700cdbc6842a48307d1b201ced43c310/hyperopt_benchmark/DALLASL.svg "DALLASL")
![benchmark-figure](https://raw.githubusercontent.com/noilreed/notebook/17443f4b700cdbc6842a48307d1b201ced43c310/hyperopt_benchmark/HIER13.svg "HIER13")
![benchmark-figure](https://raw.githubusercontent.com/noilreed/notebook/17443f4b700cdbc6842a48307d1b201ced43c310/hyperopt_benchmark/HIER16.svg "HIER13")
![benchmark-figure](https://raw.githubusercontent.com/noilreed/notebook/17443f4b700cdbc6842a48307d1b201ced43c310/hyperopt_benchmark/READING1.svg "READING1")
![benchmark-figure](https://raw.githubusercontent.com/noilreed/notebook/17443f4b700cdbc6842a48307d1b201ced43c310/hyperopt_benchmark/READING3.svg "READING3")
![benchmark-figure](https://raw.githubusercontent.com/noilreed/notebook/17443f4b700cdbc6842a48307d1b201ced43c310/hyperopt_benchmark/SOSQP1.svg "SOSQP1")
![benchmark-figure](https://raw.githubusercontent.com/noilreed/notebook/17443f4b700cdbc6842a48307d1b201ced43c310/hyperopt_benchmark/SOSQP2.svg "SOSQP2")
![benchmark-figure](https://raw.githubusercontent.com/noilreed/notebook/17443f4b700cdbc6842a48307d1b201ced43c310/hyperopt_benchmark/SREADIN3.svg "SREADIN3")
![benchmark-figure](https://raw.githubusercontent.com/noilreed/notebook/17443f4b700cdbc6842a48307d1b201ced43c310/hyperopt_benchmark/ZAMB2.svg "ZAMB2")

------------------------------------------------------------------------

## Future Related Plan

I do think it is a good idea to organize the benchmark code as a package, then we can have a algorithm-agnostic optimization benchmark. My preliminary idea is that user can input their algorithm, by encapsulate it using predefined interface. Then the package evaluates it's performance over some predefined (or user-customized) optimization problems, comparing that with some other predefined (or user-customized) algorithms in terms of time (or iteration) vs regret. \\
But before that I'll pay some attention to several other optimization related benchmarks. I'll make the plan to implement that if no library has similar functions that i'm conceiving.

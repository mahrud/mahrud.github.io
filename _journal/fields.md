---
layout: default
title: Week 01
status: draft
---

# MATH 6670: CoCAAG
Instructor: Mike Stillman, course [website](http://www.fields.utoronto.ca/activities/24-25/CCAandCAG).

* What can be computed in commutative algebra and algebraic geometry? [cite Bayer paper]

### Day 1: Monday, Jan 6, 2024

**Today: Gröbner Bases**
References:
* Cox, Little, O'Shea
* Eisenbud Ch. 15
* Adams, Loustaunau

Goals:
* Want new algorithms
* Software: Macaulay2, but can use whatever

Commutative algebra is about studying commutative rings.
Our first ring: $R = k[x_1,\dots,x_n], k = \text{field}$, ideals $I = \langle f_1,\dots,f_r\rangle\subseteq R$, and modules.

Other rings:
* polynomial rings over $\mathbb Z$
* quotient rings $R/I$
* localizations
* exterior algebras
* Weyl algebras

Questions:
* is $I = (1) = R$, i.e. is $1\in I$?
* given $g\in R$, is $g\in I$?
* is $I,J\subseteq R$, what is $I\cap J$?
* consider $R/I$, is $f\equiv g \mod I$?
* suppose $A: R^n\to R^m$, where $A$ is an $m\times n$ matrix, what is $\ker A$, aka. the module of syzygies?

### Monomial Ideals
For any $\alpha\in\mathbb N^n$ we have a monomial $x^\alpha = x_1^{\alpha(1)}\dots x_n^{\alpha_n}$. A term $cx^\alpha$ is a monomial along with a coefficient $c\in k$.

e.g. $I = \langle a^3, a^2b, abc, a^2bc\rangle\subseteq k[a,b,c]$.

Basics:
* $1\in I \iff 1 = x^\alpha$ for some $\alpha$
* membership
* minimal generators
* colon ideal and saturation
* radical

Examples:
* squarefree monomial ideals
	* whenever $\alpha\in\{0,1\}^n$
* strongly stable ideal:
	* whenever $x^\alpha x_i\in I$, $x^\alpha x_j\in I$ for all $j<i$
* Borel-fixed

### Hilbert functions and Hilbert series
Let $R = k[x_1,\dots,x_n]$ be a standard graded polynomial ring, i.e. $\deg(x_i)=1$. Then $R = \bigoplus_{d\geq0} R_d$ where $R_d$ is the $k$-vector space (or abelian group) spanned by all monomials of degree $d$.

The *Hilbert function* is
$$\mathrm{Hilb}_{R/I}(d) \coloneqq \dim_k\left({R_d}/{I_d}\right).$$
The *Hilbert series* of $R/I$ is
$$H_{R/I}(t) = \sum_{d\in\mathbb Z} \dim_k(R/I)_d t^d.$$
Hilbert's 1890 paper (cite):
$$H_{R/I}(t) = \frac{f(t)}{(1-t)^n}, \quad \text{some } f\in\mathbb Z[t].$$
Which can be simplified to 
$$H_{R/I}(t) = \frac{g(t)}{(1-t)^m}, \quad \text{some } g\in\mathbb Z[t] \text{ and } g(1)\neq 0,$$
then $\dim(R/I) = m.$

Remark:
* $H_R(t) = \frac{1}{(1-t)^n}$
* $\mathrm{Hilb}_R(d) = \dim_k R_d = \choose{d+n-1}{n-1}$.

New Question:
* how to compute the Hilbert series of a monomial ideal?

Important exact sequence:
$$0\to \frac{I + \langle f\rangle}{I} \to R/I \to \frac{R}{I + \langle f\rangle} \to 0$$

$\frac{I+(f)}{I}\cong$
(continued in a photo)

**Week 1 [Questions](https://www.fields.utoronto.ca/talk-media/2/56/32/slides.pdf)**

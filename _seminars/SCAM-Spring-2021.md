---
layout: seminar
title: Student Commutative Algebra Meeting
semester: Spring
year: 2021
talks:
- date: 2/8/2021
  speaker: Michael Brown (Auburn)
  title: The BGG correspondence for toric varieties (pre-talk)
  abstract: >-
    This is an introductory talk covering background on Eisenbud-Fløystad-Schreyer's paper
    on BGG and Tate resolutions for the Commutative Algebra Seminar tomorrow.
- date: 2/15/2021
  speaker: Mahrud Sayrafi
  title: The Beilinson Spectral Sequence
  abstract: >-
    This talk is an introductory talk about a spectral sequence that seemed to popped up
    in every paper I've read in the past couple of years. I'll start with talking about
    the very concrete (and in fact computational!) connection of these papers with the
    derived category of the projective space. Then, I'll construct the Beilinson spectral
    sequence, which itself is an example of the Grothendieck spectral sequence for
    composition of two functors (I will introduce this even if you haven't watched
    Gennady's videos for February 12th yet!) I'll end with showing what the convergence
    of this spectral sequence means about the projective space.
- date: 2/22/2021
  speaker: Robert M. Walker (Wisconsin)
  title: Uniform Asymptotic Growth of Symbolic Powers of Ideals (pre-talk)
  abstract: >-
    This is an introductory talk covering background for the Commutative Algebra Seminar tomorrow.
- date: 3/1/2021
  speaker: Katherine Maxwell
  title: Cohomology of the Lie algebra of vector fields on a curve
  abstract: >-
    In 1968, Gel'fand and Fuchs began the study of the cohomology of vector fields on manifolds
    with papers on the case of a circle and n-torus. A key simplification in such calculations is considering
    only the continuous cochains, which results in finite dimensional cohomology. I will discuss why calculating
    Gel'fand-Fuks cohomology is difficult, and show how dg-algebras and spectral sequences are
    useful in the case of holomorphic vector fields on compact curves (Feigin 1991).
- date: 3/8/2021
  speaker: Janet Page (Michigan)
  title: "Extremal Singularities in Positive Characteristic: Introduction"
  abstract: >-
    I will introduce an invariant called the F-pure threshold, which is a measure of singularity.
    This will provide some extra background and context for the commutative algebra seminar on Tuesday.
- date: 3/15/2021
  speaker: Galen Dorpalen-Barry (UMN)
  title: The Varchenko-Gel’fand Ring of a Hyperplane Arrangement or a cone
  abstract: >-
    The coefficients of the characteristic polynomial of an arrangement in real vector space have
    many interpretations. An interesting one is provided by the Varchenko-Gel’fand ring, which is
    the ring of functions from the chambers of the arrangement to the integers with pointwise multiplication.
    Varchenko and Gel’fand gave a simple presentation for this ring, along with a filtration whose
    associated graded ring has its Hilbert function given by the coefficients of the characteristic
    polynomial. We generalize these results to cones defined by intersections of halfspaces of some
    of the hyperplanes. Our generalization gives a Gröbner basis presentation for the Varchenko-Gel'fand
    ring of a cone and (as a consequence) a novel proof of Varchenko and Gel'fand's results.
- date: 3/22/2021
  speaker: Avi Steiner (University of Western Ontario)
  title: The critical set variety of a hyperplane arrangement and its dual (pre-talk)
  abstract: >-
    I will discuss the critical set scheme of a hyperplane arrangement A, it’s relationship to the logarithmic
    forms of A, and how to “symmetrize” this critical set scheme with respect to matroid duality.
    Special focus will be paid to cases when the modules of logarithmic forms have “bad” homological properties.
- date: 3/29/2021
  speaker: McCleary Philbin
  title: A brief introduction to Lyubeznik numbers and a few of their applications
  abstract: >-
    The Lyubeznik numbers are invariants of a local ring containing a field that capture ring-theoretic
    properties. They also have many connections to geometry and topology. I will discuss preliminaries
    necessary to define Lyubeznik numbers, including local cohomology and Bass numbers, then state some
    useful properties. If time permits, I will state some applications of Lyubeznik numbers to
    the Hochster-Huneke graph and to singular homology.
- date: 4/12/2021
  speaker: Mahrud Sayrafi (UMN)
  title: Introduction to Multigraded Regularity for Products of Projective Spaces (pre-talk)
  abstract: >-
    I will review the basic characterizations of the Castelnuovo-Mumford regularity of a graded module
    (or the corresponding coherent sheaf) on a projective space in terms of betti numbers, local cohomology,
    and truncations. Following that, I will motivate and define the multigraded regularity defined by Maclagan
    and Smith for toric varieties in preparation for my talk tomorrow.
- date: 5/3/2021
  speaker: everyone
  title: Wind down and look ahead!
  abstract: >-
    No abstract, come as you are, don't be late!
---

For Spring 2021 the seminar meets:
- on **Mondays 3:35pm -- 4:25pm CST**
- via [Zoom] ← click there! (same room as the adult seminar)

The rough format of the seminar this semester is to meet every two weeks
for student talks and on the remaining weeks have introductory pre-talks
for the (adult) [Commutative Algebra Seminar].

<style>
  td, th { padding: 10px; }
  td:last-child::after { content: ""};
</style>

|      When?      |        Who?        |       What?      |
| --------------- | ------------------ | ---------------- |{% for talk in page.talks %}
| {{ talk.date }} | {{ talk.speaker }} | {{ talk.title }} ![]({{ site.baseurl}}/static/abs.png "Abstract: {{ talk.abstract}}"){:style="margin-left: 15px; float: right; cursor:pointer;"} |{% endfor %}
{:style="background-color:rgb(255,247,191)"}

<br />

- [Join the SCAM mailing list](https://groups.google.com/a/umn.edu/forum/#!forum/student-commalg/join) ← click there!

- Join the Discord channel #SCAM for discussions!

- Interested in giving a talk? Contact Mahrud (mahrud@) or McCleary (philb036@)

[Commutative Algebra Seminar]: http://www-users.math.umn.edu/~jkyang/seminars/ca_seminar/s2021.shtml
[Zoom]: https://umn.zoom.us/j/96978192398?pwd=ajFBN3BIUFNudHpVdXMrbXF0RUFjQT09

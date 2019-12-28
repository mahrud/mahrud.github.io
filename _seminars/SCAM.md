---
layout: seminar
title: Student Commutative Algebra Meeting
semester: Spring
year: 2020
talks:
- date: 1/30/2020
  speaker: N/A
  title: Planning Meeting
  abstract: >-
    This is the plan: you should give a talk!
- date: 2/6/2020
  speaker: McCleary Philbin
  title: Graded Koszul and local cohomology
  abstract: >-
    This talk is an introduction to recent work of Ma, Singh, and
    Walther on Koszul and local cohomology, and a question of Dutta.
- date: 2/13/2020
  speaker: Mahrud Sayrafi
  title: Vector bundles on the projective space
  abstract: >-
    This talk is about line bundles and vector bundles in commutative algebra.
    We will construct the Hurrocks-Mumford vector bundle in Macaulay2 and prove that it is indecomposable.
- date: 2/20/2020
  speaker: TBD
  title: TBD
  abstract: >-
    TBD
- date: 2/17/2020
  speaker: Jorin Schug
  title: DG-Algebras I
  abstract: >-
    TBD
- date: 3/5/2020
  speaker: Jorin Schug
  title: DG-Algebras II
  abstract: >-
    TBD
# Spring break
---
{% comment %}
March    19th -> 
March    26th -> 
April     2nd -> 
April     9th -> Monica Lewis?
April    16th -> 
April    23rd -> 
April    30th -> day before finals
{% endcomment %}

For Spring 2020 the seminar meets:
- on **Thursdays 2:30pm -- 3:20pm**
- in **Vincent 570**

Talk suggestions for this semester:
- Combinatorial commutative algebra
- $D$-modules and local cohomology
- Differentially graded algebras
- Elimination theory and Implicitization
- Gröbner bases and Buchberger's algorithm
- Properties of Cohen--Macaulay rings
- Hilbert scheme of elliptic curves
- Quillen--Suslin theorem
- Matrix factorization
- Toric varieties

{% comment %}
This semester's themes are:
- $D$-Modules
- Introductory 
{% endcomment %}

<style>
  td, th { padding: 10px; }
  td:last-child::after { content: ""};
</style>

|      When?      |        Who?        |       What?      |
| --------------- | ------------------ | ---------------- |{% for talk in page.talks %}
| {{ talk.date }} | {{ talk.speaker }} | {{ talk.title }} ![]({{ site.baseurl}}/static/abs.png "Abstract: {{ talk.abstract}}"){:style="margin-left: 15px; float: right; cursor:pointer;"} |{% endfor %}
{:style="background-color:rgb(255,247,191)"}

<br />

- Interested in joining our mailing list or giving a talk? <br />
Contact Mahrud Sayrafi (mahrud@) or McCleary Philbin (philb036@).

- For the adult Commutative Algebra Seminar [click here](http://www-users.math.umn.edu/~jkyang/seminars/ca_seminar/s2020.shtml).

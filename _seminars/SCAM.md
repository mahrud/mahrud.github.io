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
  title: TBD
  abstract: >-
    TBD
- date: 3/15/2021
  speaker: Galen Dorpalen-Barry (UMN)
  title: TBD
  abstract: >-
    TBD
- date: 3/29/2021
  speaker: McCleary Philbin
  title: TBD
  abstract: >-
    TBD
- date: 4/12/2021
  speaker: Mahrud Sayrafi (UMN)
  title: TBD
  abstract: >-
    TBD
- date: 4/26/2021
  speaker: TBD
  title: TBD
  abstract: >-
    TBD
---

For Spring 2021 the seminar meets:
- on **Mondays 3:35pm -- 4:25pm CST**
- via [Zoom] ← click there! (same room as the adult seminar)

The rough format of the seminar this semester is to meet every two weeks
for student talks and on the remaining weeks have introductory pre-talks
for the (adult) [Commutative Algebra Seminar].

{% comment %}
Look to the left for the archive of talks from previous semesters
and join the conversation on Discord channel #SCAM to pitch in!
{% endcomment %}

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

- [Join the SCAM mailing list](https://groups.google.com/a/umn.edu/forum/#!forum/student-commalg/join) ← click there!

- Join the Discord channel #SCAM for discussions!

- Interested in giving a talk? Contact Mahrud (mahrud@) or McCleary (philb036@)

[Commutative Algebra Seminar]: http://www-users.math.umn.edu/~jkyang/seminars/ca_seminar/s2021.shtml
[Zoom]: https://umn.zoom.us/j/96978192398?pwd=ajFBN3BIUFNudHpVdXMrbXF0RUFjQT09

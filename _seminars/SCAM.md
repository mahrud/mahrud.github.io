---
layout: seminar
title: Student Commutative Algebra Meeting
semester: Spring
year: 2022
talks:
- date: 2/4/2022
  speaker: You?
  title: TBA
  abstract: >-
    No abstract yet
---

For Spring 2022 the seminar meets:
- on TBD
- in TBD

The rough format of the seminar this semester is to meet two hours before
the (adult) [Commutative Algebra Seminar] for either student talks or
discussing what we are currently working on.

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

- Interested in giving a talk? Here are some talk suggestions
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
  - Macaulay2-fu!

[Commutative Algebra Seminar]: https://sites.google.com/view/umncaagseminar/umn-caag-seminar

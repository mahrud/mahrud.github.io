---
layout: default
title: Seminars
---

{% assign seminars_list = site.seminars | sort: 'year' | sort: 'semester' | reverse %}

## Student Commutative Algebra Meeting
{% for seminar in seminars_list %}{% if seminar.title == "Student Commutative Algebra Meeting" -%}
* [{{ seminar.semester }} {{ seminar.year }}]({{ site.baseurl }}{{ seminar.url }})
{% endif %}{% endfor %}


### Other Student Seminars
* [Student Topology and Algebraic Geometry Seminar](https://sites.google.com/view/stags-umn/home)
* [Student Combinatorics and Algebra Seminar](https://math.umn.edu/~webst390/StudentCombinatoricsSeminar/2019.shtml)


### Department Seminars
* [(Adult) Commutative Algebra Seminar](http://www-users.math.umn.edu/~jkyang/organization.shtml)
* [MATH-SEMINAR Listserv](https://lists.umn.edu/cgi-bin/wa?A0=MATH-SEMINAR) (UMN login required)
* [Calendar of Seminars](https://math.umn.edu/news-events/seminars)

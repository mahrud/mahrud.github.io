---
layout: seminar
title: Seminars
tagline: Seminars Organizing
category: activities
order: 6
---

## Fields Thematic Program in Commutative Algebra and Applications

See [Commutative Algebra and Applications Seminar](http://www.fields.utoronto.ca/activities/24-25/caa-seminar).

## Student Commutative Algebra Meeting
{% assign seminars_list = site.seminars | sort: 'year' | sort: 'semester' | reverse %}
{% for seminar in seminars_list %}{% if seminar.title == "Student Commutative Algebra Meeting" -%}
* [{{ seminar.semester }} {{ seminar.year }}]({{ site.baseurl }}{{ seminar.url }})
{% endif %}{% endfor %}

There are also other interesting seminars at UMN:

### Other Student Seminars
* [Student Topology and Algebraic Geometry Seminar](https://sites.google.com/view/stags-umn/home)
* [Student Combinatorics and Algebra Seminar](https://math.umn.edu/~webst390/StudentCombinatoricsSeminar/2019.shtml)


### Department Seminars
- [(Adult) Commutative Algebra and Algebraic Geometry Seminar](https://sites.google.com/view/umncaagseminar/umn-caag-seminar)
- [(Adult) Commutative Algebra Seminar (old)](https://sites.google.com/view/ayah-almousa/conferences-seminars/organizing/umn-ca-seminar)
* [(Adult) Commutative Algebra Seminar (old)](http://www-users.math.umn.edu/~jkyang/organization.shtml)
* [MATH-SEMINAR Listserv](https://lists.umn.edu/cgi-bin/wa?A0=MATH-SEMINAR) (UMN login required)
* [Calendar of Seminars](https://math.umn.edu/news-events/seminars)

---
layout: default
title: Journal
tagline: Macaulay2-Fu Journal
order: 4
---

Here is a non-exhaustive list of random bits of Macaulay2-fu I've written over time.

{% for item in site.journal %}{% if item.status == "published" %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endif %}{% endfor %}

## Drafts
{% for item in site.journal %}{% if item.status == "draft" %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endif %}{% endfor %}

In Spring and Fall of 2020 I was sponsored by the MSRI to work for the [Macaulay2] project.
In that year, my [contributions] spanned over 60 pull requests.

Keep an eye on this space (or this [feed]({{ site.baseurl }}/atom.xml)) for updates related to:
- improvements to various top level mathematical routines
- development best practices and style guides
- documentation improvements
- modernizing the engine
- build system improvements
- profiling and benchmarking techniques
- code coverage and linting tools

You can also follow the M2 [repository] and list of [issues] on GitHub.
If there is anything you would like to see improved, or if you would like to get involved, please get in touch.

{% comment %}
## Ideas
{% for item in site.journal %}{% unless item.status %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endunless %}{% endfor %}
{% endcomment %}

[Macaulay2]: http://macaulay2.com/
[repository]: https://github.com/Macaulay2/M2/
[contributions]: https://github.com/Macaulay2/M2/pulls?q=is%3Apr+is%3Amerged+author%3Amahrud
[issues]: https://github.com/Macaulay2/M2/issues
[LearnM2]: https://mahrud.github.io/LearnM2

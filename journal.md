---
layout: default
title: Journal
tagline: Macaulay2 Journal
order: 4
---

This semester I am sponsored by the MSRI to work for the [Macaulay2] project.
There are various objectives for this semester, but I have two overarching goals in mind:
- Modernize the project in order to encourage contributions;
- Do some math while at it!

## Published
{% for item in site.journal %}{% if item.status == "published" %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endif %}{% endfor %}

## Drafts
{% for item in site.journal %}{% if item.status == "draft" %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endif %}{% endfor %}

Keep an eye on this space (or this [feed]({{ site.baseurl }}/atom/)) for updates related to:
- improvements to various top level mathematical routines
- development best practices and style guides
- documentation improvements
- modernizing the engine
- build system improvements
- profiling and benchmarking techniques
- code coverage and linting tools

You can also follow the M2 [repository](https://github.com/Macaulay2/M2/) and list of [issues](https://github.com/Macaulay2/M2/issues) on GitHub or my fork of the [repository](https://github.com/mahrud/M2/) for updates. If there is anything you would like to see improved, or if you would like to get involved, please get in touch. 

{% comment %}
## Ideas
{% for item in site.journal %}{% unless item.status %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endunless %}{% endfor %}
{% endcomment %}

[Macaulay2]: http://macaulay2.com/

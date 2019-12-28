---
layout: default
title: Journal
tagline: Macaulay2 Journal
order: 4
---

This semester I am sponsored by the MSRI to work for the [Macaulay2] project.
There are various objectives for this semester, but I have two overarching goals in mind:
- Modernize the Macaulay2 language in order to encourage contributions;
- Macaulay2 is for doing math, so let's do some math!

Keep an eye on this space (or this [feed]({{ site.baseurl }}/atom/)) for updates related to:
- improvements to various top level mathematical routines
- development best practices and style guides
- documentation improvements
- modernizing the engine
- build system improvements
- profiling and benchmarking techniques
- code coverage and linting tools

I will also use this space as a draft of useful information which might eventually become a union of [this](http://wiki.macaulay2.com/Macaulay2/), [this](http://wiki.macaulay2.com/Snowbird/index.php/Main_Page), and [this](https://github.com/Macaulay2/M2/wiki) wikies.

You can also follow the M2 [repository](https://github.com/Macaulay2/M2/) and list of [issues](https://github.com/Macaulay2/M2/issues) on GitHub or my fork of the [repository](https://github.com/mahrud/M2/) for updates. If there is anything you would like to see improved, or if you would like to get involved, please get in touch. 

## Macaulay2 Workshop

I'll be at the [Macaulay2 workshop](https://math.galetto.org/m2csu2020) at Cleveland State University on May 11-15, 2020.
Prior to that, I'll also be at the M2 internals meeting

## Published
{% for item in site.journal %}{% if item.status == "published" %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endif %}{% endfor %}

## Drafts
{% for item in site.journal %}{% if item.status == "draft" %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endif %}{% endfor %}

## Ideas
{% for item in site.journal %}{% unless item.status %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endunless %}{% endfor %}

[Macaulay2]: http://macaulay2.com/

---
layout: default
title: Mathematical Experiments
---

{% for item in site.experiments %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endfor %}

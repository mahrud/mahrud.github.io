---
layout: default
title: Et cetera
---

{% for item in site.etc %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endfor %}

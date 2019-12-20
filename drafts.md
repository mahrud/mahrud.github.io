---
layout: default
title: Drafts
tagline: Writing Drafts
---

{% for item in site.drafts %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endfor %}

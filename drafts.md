---
layout: default
title: Writing Drafts
---

## Published
{% for item in site.drafts %}{% if item.status == "published" %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endif %}{% endfor %}

## Drafts
{% for item in site.drafts %}{% if item.status == "draft" %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endif %}{% endfor %}

## Ideas
{% for item in site.drafts %}{% unless item.status %}
* [{{ item.title }}]({{ site.baseurl }}{{ item.url }}){% endunless %}{% endfor %}

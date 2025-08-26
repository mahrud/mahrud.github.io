---
layout: page
title: M2-fu
tagline: Macaulay2 Potluck Collective
category: activities
order: 1
---

## What is this?

This is an informal postdoc[^1] circle for sharing skills and expertise in using M2-fu[^2] towards research.
The aims of this meeting are threefold:
- exchange specific examples of using M2 in forming conjectures and proving theorems.
- explore M2 roadblocks and bottlenecks that obstruct our research and discuss solutions.
- empower the community to understand and improve the core algorithms in M2.

This involves a mix of virtual gatherings, smaller one-on-one meetings, etc.

### Macaulay2 is about research, not just programming!

We discuss research questions, M2 computations that led to them, and if there is a missing link, together we dive in to find the algorithmic problems and brainstorm ideas from different perspectives (e.g. start with an $F$-regularity question but end with contrasting algorithms for colon ideals.)

### Potlucks are about community: everyone contributes!

Everyone uses M2 differently, depending on the unique computational aspects of their research area, therefore everyone is encouraged to pose a problem, example, or technique and open up a discussion. We will also practice contributing to Macaulay2 in ways that are in service of our research problems.

### Collective does not mean a class or a debugging session!

Ultimately, the goal is to form a community of colleagues amongst whom collaborations can be born. When discussing a project, it will be communicated clearly whether or not it is open to collaborators or an ongoing project obstructed by computational questions which motivate a separate project.

## Previous Meetings

### August 26, 2025: [Anna Brosowsky](https://anna-brosowsky.github.io/) on $F$-purity and colon ideals

Anna talked about the problem of testing whether an ideal is $F$-Pure in positive characteristics + the Fedder's criterion which uses colon ideals + the naive algorithm for computing colon ideals using intersection as a blackbox. Anna and collaborators are working on a project about F-purity of certain combinatorial ideals and posed the problem of effective testing of F-purity as a separate project.

After this, we used `profile` and `profileSummary` to investigate what pieces of code `isFPure` uses and split into three groups looking at:
- where intersection algorithms are in the `Core`
- where colon ideal algorithms are in the `Saturation` package
- where `isFPure` is implemented in `TestIdeals` package

## I am intrigued! How do I join?

![]({{ site.baseurl }}/static/M2fu/bowl-400.png "ha"){: style="width: 150px; margin-left: 20px; float: right"}

The next meeting will be late September/early October. In the meantime, send an email to <mailto:mahrud@mcmaster.ca> to be added to our Zulip channel.

{% comment %}
A 90-minute test run will happen at the end of August. The last 30 minutes will be an organizational discussion to decide the format of future meetings. If you'd like to join:
- please **fill this [When2Meet](https://www.when2meet.com/?31675319-lAkc1) by Wednesday 8/20**, and
- send an **email to <mailto:mahrud@mcmaster.ca>**.

The meeting will be via Zoom. Details will be shared via email / Zulip / here.

Whether you're a seasoned polynomial ring navigator or just starting to explore the world of computational commutative algebra, this is your chance to:

• Share clever code snippets and time-saving techniques
• Troubleshoot challenging computations together
• Discover new packages and functionalities
• Learn from each other's research applications
• Build a supportive community around our favorite computer algebra system

Our first meeting will be [DATE/TIME/LOCATION]. Come prepared to share a brief story about how Macaulay2 has helped (or challenged!) your recent work - no formal presentations required, just good mathematical conversation over coffee.

Let's turn our individual M2 struggles into collective breakthroughs!

P.S. - Bonus points if you can bring your most elegant one-liner or most frustrating bug story!
{% endcomment %}

Footnotes:

[^1]: Experienced grad students and non-tenured faculty are welcome. Feel free to send this link to others and please reach out if you're unsure whether this meeting is for you.
[^2]: The ["-fu"](https://en.wiktionary.org/wiki/-fu) suffix is a slang used to form nouns indicating expertise or mastery of specified skill or area of knowledge, like kung fu. It's also a tofu pun

---
layout: default
title: Geometric Arts Experiments
---

{::options parse_block_html="true" /}

# Geometric Art Experiments

<p>
  This is inspired by a <a href="https://twitter.com/SamuelGWalters/status/1082538261686284289">tweet by Sam Walters</a>
  on a continuous family of complex multiplications extending the real numbers.
</p>
<p>
  Here's what is happening below:
</p>
<ul>
  <li><p>iterate \(z_1\) through a number of points on a circle;</p></li>
  <li><p>iterate \(z_2\) through 9 points with integer coordinates;</p></li>
  <li><p>let \(\xi\) follow your mouse pointer <b>with one tenth the magnitude</b>.</p></li>
  <li><p>(The factor is there because otherwise the output would be too large to see)</p></li>
  <li><p>draw a line segment from \(z_1 z_2\) to \(z_1\bullet z_2 = z_1 z_2 + Im(z_1)Im(z_2)\xi\)</p>
  </li>
</ul>
<p>
  Feel free to <a href="https://editor.p5js.org/mahrud/sketches/BJ_n6QzMN">change it yourself</a> and let me know!
</p>
<iframe id="p5jsFrame" src="{{ site.baseurl }}/arts/CM.html" style="border: none; height: 430px; width: 620px"></iframe>
<p>
  In a previous iteration of this, at some point I made a <a href="{{ site.baseurl }}/bloopers">small but glorious mistake that I think is really pretty</a>
</p>

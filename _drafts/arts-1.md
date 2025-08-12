---
layout: default
title: I. Mathematics from Arts?
status: published
---

<p>Last Halloween I found myself the lone math student at a party, wearing a Springer Yellow Book costume. While I do not claim to be good at making costumes, to my relief people enjoyed a good “textbook costume” pun. Most of all, I was happy that nobody found my costume scary<sup id="fnref:1"><a href="#fn:1" class="footnote">1</a></sup>.</p>

<p>After a while I started a conversation with a couple of people about our jobs and what we enjoy about it. I told them about the research and teaching aspects of my graduate program. This semester I was a teaching assistant for a lower-division <em>Linear Algebra and Differential Equations</em> course. I find this course to be quite fun to teach, because I get to help students develop a geometric intuition for abstract mathematics and point to wonderful <a href="https://www.ams.org/publicoutreach/feature-column/fcarc-svd">applications</a> of that abstraction.</p>

<p>As it turned out, one of the people in our group was a graphics design student. He told me about a project involving linear algebra, and how he wished that he had taken more math courses. He also mentioned using the <em>Bézier curves</em> in his classes. I had never heard of that name, so I wrote a note to look into it later. This conversation reminded me of something I had read in Jordan Ellenberg pitch for <a href="https://dx.doi.org/10.1090/noti1813">Outward-Facing Mathematics</a>:</p>

<blockquote>
  <p><em>“Those of us who teach spend a lot of hours talking about math in front of students who have been forced to be there. That makes it easy to forget that people out in the world generally admire math and are excited to learn about it, if we give them a way in!”</em></p>
</blockquote>

<p>Back at home, I looked up <em>Bézier curves</em>, which lead me down a delightful rabbit hole of computer fonts and automobile design<sup id="fnref:2"><a href="#fn:2" class="footnote">2</a></sup>, and in the process I learned new math. In this post (and hopefully others) I am going to write about the wonderful mathematics that I learn inspired by people in other professions.</p>

<h2 id="what-does-graphic-design-have-to-do-with-math">What does graphic design have to do with math?</h2>

<p>Geometry. Even the most basic illustrations involve lines and areas. To design the fancy $\LaTeX$ fonts used for mathematical symbols, for instance, each glyph is pieced together by many curves enclosing a shaded region.</p>

<blockquote>
  <p><img src="../ABCD.gif" alt="" style="width: 400px; display:block; margin-left: auto; margin-right: auto;" />
<em>“And since geometry is the right foundation of all painting, I have decided to teach its rudiments and principles to all youngsters eager for art.” – Albrecht Dürer (1471–1528)</em></p>
</blockquote>

<p>This might sound like a trivial fact, like answering a toddler who asks “how are words written?” or at best something that typographers, not mathematicians, would find interesting. In that case, you might be surprised to hear that in the late 70’s and 80’s the AMS formed an advisory Standing Committee on Composition Technology<sup id="fnref:3"><a href="#fn:3" class="footnote">3</a></sup> and helped work on a then up-and-coming software by Donald Knuth called $\TeX$.</p>

<blockquote>
  <p><img src="../A.png" alt="" style="display:block; margin-left: auto; margin-right: auto;" />
<em>This is an <a href="https://en.wikipedia.org/wiki/Initial">initial</a> <a href="https://en.wikipedia.org/wiki/Sort_(typesetting)">type</a> stored in a wooden <a href="https://en.wikipedia.org/wiki/Type_case">type case</a> at the <a href="https://www.mnbookarts.org/">Minnesota Center for Book Arts</a>. Look at those beautiful plant-form spirals.</em></p>
</blockquote>

<p>Stay with me and I will explain why I find this mathematically interesting.</p>

<h2 id="how-does-interpolating-curves-work">How does interpolating curves work?</h2>

<p>Euclid postulated that given any two points, we can draw a straight line passing through them.</p>

<p><strong>Question:</strong> in how many different ways can the statement above be generalized?</p>

<p>Here are a few I can think of:</p>
<ul>
  <li>given three points, when can we draw a straight line passing through them?
How about a circle or a <a href="https://en.wikipedia.org/wiki/Conic_section">conic section</a>?</li>
  <li>given three points, what is the lowest degree polynomial $y=P(x)$ passing through them?</li>
  <li>given two lines in the space, when can we find a unique plane passing through them?</li>
</ul>

<p>Each of these are interesting problems, typically studied by <a href="https://arxiv.org/abs/1605.01117">algebraic geometers</a>. There are also others, but for now let’s consider the following:</p>
<ul>
  <li>given two points and two lines passing through them, is there a cubic polynomial tangent to the given lines at the respective points?</li>
</ul>

<p>This is referred to as <a href="https://en.wikipedia.org/wiki/Spline_(mathematics)">spline interpolation</a>.</p>

<blockquote>
  <p><img src="../Interpolation.gif" alt="" style="width: 90%; display:block; margin-left: auto; margin-right: auto;" />
<em>The term “<a href="https://en.wikipedia.org/wiki/Flat_spline">spline</a>” originally referred to drafting tools used in designing optimal curves for ships and, later, airplanes.</em></p>
</blockquote>

<p>The idea here boils down to finding a special basis $H_0(x)$, $H_1(x)$, $H_2(x)$, and $H_3(x)$ for the space of cubic polynomials in one variable so that given $y_0$,$y_1$,$m_0$, and $m_1$, we can quickly find the cubic polynomial we wanted by computing $P(x) = y_0 H_0(x) + y_1 H_1(x) + m_0 H_2(x) + m_1 H_3(x)$. Here is the idea:</p>

<p>Consider $P(x) = ax^3+bx^2+cx+d$, so $\tfrac{dP}{dx}(x) = 3ax^2+2bx+c$. Plugging in our initial conditions gives:</p>

<p>\[
\begin{aligned}
  y_0 = P(0) &amp;=  d \\
  y_1 = P(1) &amp;=  a + b + c + d \\
  m_0 = \tfrac{dP}{dx}(0) &amp;= c \\
  m_1 = \tfrac{dP}{dx}(1) &amp;= 3a + 2b + c
\end{aligned}
\]</p>

<p>This is a system of linear equations:</p>

<p>\[
\begin{pmatrix} y_0  \\ y_1  \\ m_0   \\ m_1   \end{pmatrix} = 
\begin{pmatrix} P(0) \\ P(1) \\ P’(0) \\ P’(1) \end{pmatrix} = 
\begin{pmatrix}
 0 &amp; 0 &amp; 0 &amp; 1 \\
 1 &amp; 1 &amp; 1 &amp; 1 \\
 0 &amp; 0 &amp; 1 &amp; 0 \\
 3 &amp; 2 &amp; 1 &amp; 0 \\
 \end{pmatrix}
\begin{pmatrix} a \\ b \\ c \\ d \end{pmatrix}
\]</p>

<p>Since this matrix is invertible, we can find:</p>

<p>\[
\begin{pmatrix} a \\ b \\ c \\ d \end{pmatrix} =
\begin{pmatrix}
 0 &amp; 0 &amp; 0 &amp; 1 \\
 1 &amp; 1 &amp; 1 &amp; 1 \\
 0 &amp; 0 &amp; 1 &amp; 0 \\
 3 &amp; 2 &amp; 1 &amp; 0 \\
 \end{pmatrix}^{-1}
\begin{pmatrix} y_0  \\ y_1  \\ m_0   \\ m_1   \end{pmatrix}
\]</p>

<p>Now we can go back to $P(x)$:</p>

<p>\[
\begin{aligned}
P(x)
&amp;= \begin{pmatrix} x^3 \\ x^2 \\ x \\ 1 \end{pmatrix}^T
   \begin{pmatrix} a \\ b \\ c \\ d \end{pmatrix} \\
&amp;= \begin{pmatrix} x^3 \\ x^2 \\ x \\ 1 \end{pmatrix}^T
\begin{pmatrix}
 0 &amp; 0 &amp; 0 &amp; 1 \\
 1 &amp; 1 &amp; 1 &amp; 1 \\
 0 &amp; 0 &amp; 1 &amp; 0 \\
 3 &amp; 2 &amp; 1 &amp; 0 \\
 \end{pmatrix}^{-1}
\begin{pmatrix} y_0 \\ y_1 \\ m_0 \\ m_1   \end{pmatrix} \\
&amp;= \begin{pmatrix} x^3 \\ x^2 \\ x \\ 1 \end{pmatrix}^T
   \begin{pmatrix}
 2 &amp; -2 &amp;  1 &amp;  1 \\
-3 &amp;  3 &amp; -2 &amp; -1 \\
 0 &amp;  0 &amp;  1 &amp;  0 \\
 1 &amp;  0 &amp;  0 &amp;  0 \\
 \end{pmatrix}
\begin{pmatrix} y_0  \\ y_1  \\ m_0   \\ m_1   \end{pmatrix} \\
&amp;= \begin{pmatrix} 2x^3-3x^2+1 \\ -2x^3+3x^2 \\ x^3-2x^2+x \\ x^3-x^2 \end{pmatrix}^T
   \begin{pmatrix} y_0  \\ y_1  \\ m_0   \\ m_1   \end{pmatrix} \\
&amp;= \begin{pmatrix} H_0(x) \\ H_1(x) \\ H_2(x) \\ H_3(x) \end{pmatrix}^T
   \begin{pmatrix} y_0  \\ y_1  \\ m_0   \\ m_1   \end{pmatrix} \\
&amp;= y_0 H_0(x) + y_1 H_1(x) + m_0 H_2(x) + m_1 H_3(x)
\end{aligned}
\]</p>

<p>These polynomials are the cubic Hermite splines.</p>

<blockquote>
  <p><img src="../Hermite.gif" alt="" style="width: 90%; display:block; margin-left: auto; margin-right: auto;" />
<em>Spline interpolation using the cubic Hermite basis<sup id="fnref:4"><a href="#fn:4" class="footnote">4</a></sup>.</em></p>
</blockquote>

<h2 id="there-is-much-more-to-learn-here">There is much more to learn here!</h2>

<p>Interpolating piece-wise cubic curves certainly is not the end of the story. As studied by <a href="http://wiki.siam.org/siag-ag/index.php/Multivariate_Splines_and_Algebraic_Geometry">algebraic geometers</a>, multivariate <a href="https://math.okstate.edu/people/mdipasq/Conferences/SIAMTalks/1Michael.pdf">spline theory</a> and <a href="https://www.cs.utexas.edu/~bajaj/cs384R07/lectures/2007_09_04_GeoModViz-Lec2.pdf">geometric modeling</a> of curves and especially <a href="{{ site.baseurl }}/experiments/surfaces/">algebraic surfaces</a> of higher degree is an active area of research. Even more, we can consider complex analytic functions and arrive at <a href="http://isohedral.ca/escher-like-spiral-tilings/">periodic designs</a>. All of that also for another time.</p>

<p>From here it is a short walk to define Bézier curves. To keep this post short I will point to two references instead<sup id="fnref:5"><a href="#fn:5" class="footnote">5</a></sup>, but if you are interested to explore, there are many connections to numerical analysis and even a <a href="https://en.wikipedia.org/wiki/Bernstein_polynomial">constructive proof</a> of the Stone–Weierstrass approximation theorem.</p>

<p>If you are interested in the computations, you can <a href="http://math.hws.edu/eck/cs424/notes2013/canvas/bezier.html">experiment</a> with cubic and quadratic Bézier curves or learn more about <a href="https://jdhao.github.io/2018/11/27/font_shape_mathematics_bezier_curves/">modern fonts</a> and <a href="https://spectral.prototypo.io/">create one</a> or make an <a href="https://www.khanacademy.org/partner-content/pixar/animate/ball/pi/animation-with-bezier-curves">animation</a> instead.</p>

<p>To close, I want to give a nod to David Austin’s <a href="https://www.ams.org/publicoutreach/feature-column/fcarc-svd">essay</a> in which he suggests that “the singular value decomposition should be a central part of an undergraduate mathematics major’s linear algebra curriculum.” The book used in the course I am teaching stops at simple applications to physics, but perhaps introducing applications from other areas like computer science or the arts, even for students taking lower-division mathematics courses, would encourage people (including mathematicians) to view the subject in a more approachable light.</p>

<p>Notes and footnotes:</p>
<ul>
  <li>The animations above are created by the <a href="https://github.com/3b1b/manim">Manim</a> engine, as seen in <a href="https://www.3blue1brown.com/">3Blue1Brown</a> videos. I am confident that somewhere deep inside the Python libraries used in Manim, there are Bézier curves smoothing the transitions.</li>
</ul>

<div class="footnotes">
  <ol>
    <li id="fn:1">
      <p>In case anyone found my costume scary, I was ready to recite the quote by Gauss that “mathematics is the queen of sciences,” so technically I was wearing a princess costume! <a href="#fnref:1" class="reversefootnote">&#x21a9;&#xfe0e;</a></p>
    </li>
    <li id="fn:2">
      <p>If you haven’t heard yet, the new Tesla Cybertruck has decided to buck the trend of using smooth surfaces for vehicles in favor of <a href="https://twitter.com/DoomCube/status/1197971907280351233">low-poly</a> designs. Oh well. <a href="#fnref:2" class="reversefootnote">&#x21a9;&#xfe0e;</a></p>
    </li>
    <li id="fn:3">
      <p>I couldn’t find much on this committee beyond an invitation by them to join the $\TeX$ user’s group in Knuth’s 1979 book “$\TeX$ and <a href="https://en.wikipedia.org/wiki/Metafont">METAFONT</a>,” published by the AMS. <a href="#fnref:3" class="reversefootnote">&#x21a9;&#xfe0e;</a></p>
    </li>
    <li id="fn:4">
      <p>These polynomials are not the same as <a href="https://en.wikipedia.org/wiki/Hermite_polynomials">Hermite polynomials</a> <em>a la</em> the quantum harmonic oscillator, but they’re both named after the same Charles Hermite. <a href="#fnref:4" class="reversefootnote">&#x21a9;&#xfe0e;</a></p>
    </li>
    <li id="fn:5">
      <p>Bill Casselman’s feature column <a href="http://www.ams.org/publicoutreach/feature-column/fcarc-bezier">From Bézier to Bernstein</a> and <a href="https://cs184.eecs.berkeley.edu/public/sp19/lectures/lec-7-geometry-and-splines/lec-7-geometry-and-splines.pdf">these slides</a> from a Computer Graphics and Imaging course at UC Berkeley are good places to read more. <a href="#fnref:5" class="reversefootnote">&#x21a9;&#xfe0e;</a></p>
    </li>
  </ol>
</div>

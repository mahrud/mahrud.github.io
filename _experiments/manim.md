---
layout: default
title: Animating Mathematics with Manim
---

<p>Here is a simple scene:</p>

<blockquote>
  <div class="language-python highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="c1">#!/usr/bin/env python
</span>
<span class="kn">from</span> <span class="nn">manimlib.imports</span> <span class="kn">import</span> <span class="o">*</span>

<span class="k">class</span> <span class="nc">Fermat</span><span class="p">(</span><span class="n">Scene</span><span class="p">):</span>
    <span class="k">def</span> <span class="nf">construct</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
        <span class="n">example_tex</span> <span class="o">=</span> <span class="n">TexMobject</span><span class="p">(</span>
            <span class="s">"x^n+y^n=z^n"</span><span class="p">,</span>
        <span class="p">)</span>
        <span class="n">group</span> <span class="o">=</span> <span class="n">VGroup</span><span class="p">(</span><span class="n">example_tex</span><span class="p">)</span>
        <span class="n">group</span><span class="o">.</span><span class="n">set_width</span><span class="p">(</span><span class="n">FRAME_WIDTH</span> <span class="o">-</span> <span class="mi">2</span> <span class="o">*</span> <span class="n">LARGE_BUFF</span><span class="p">)</span>

        <span class="bp">self</span><span class="o">.</span><span class="n">play</span><span class="p">(</span><span class="n">Write</span><span class="p">(</span><span class="n">example_tex</span><span class="p">))</span>
        <span class="bp">self</span><span class="o">.</span><span class="n">wait</span><span class="p">()</span>
</code></pre></div>  </div>
</blockquote>

<p>To produce a gif, run:</p>

<blockquote>
  <div class="language-shell highlighter-rouge"><div class="highlight"><pre class="highlight"><code>python3 <span class="nt">-m</span> manim <span class="nt">-ipfl</span> blog.py Fermat
</code></pre></div>  </div>
</blockquote>

<p>Here is the result:</p>

<p><img src="../../drafts/ABCD.gif" alt="" style="width: 400px; display:block; margin-left: auto; margin-right: auto;"></p>

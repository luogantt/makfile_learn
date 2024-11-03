url=https://blog.csdn.net/qq_41839588/article/details/132267196?ops_request_misc=%257B%2522request%255Fid%2522%253A%25220F7587A1-9436-4BFC-8394-8180C6E92AB8%2522%252C%2522scm%2522%253A%252220140713.130102334..%2522%257D&request_id=0F7587A1-9436-4BFC-8394-8180C6E92AB8&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~top_positive~default-2-132267196-null-null.142^v100^pc_search_result_base4&utm_term=makefile&spm=1018.2226.3001.4187




<div id="content_views" class="markdown_views prism-atom-one-light">
                    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
                        <path stroke-linecap="round" d="M5,0 0,2.5 5,5z" id="raphael-marker-block" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
                    </svg>
                    <p></p> 
<div class="toc"> 
 <h4><a name="t0"></a>文章目录</h4> 
 <ul><li><a href="#_4" rel="nofollow" target="_self">前言</a></li><li><a href="#Makefile__11" rel="nofollow" target="_self">一、Makefile 介绍</a></li><li><a href="#_19" rel="nofollow" target="_self">二、示例源码</a></li><li><ul><li><a href="#1helloc_21" rel="nofollow" target="_self">1、hello.c</a></li><li><a href="#2addc_38" rel="nofollow" target="_self">2、add.c</a></li><li><a href="#3subc_45" rel="nofollow" target="_self">3、sub.c</a></li><li><a href="#4mulc_52" rel="nofollow" target="_self">4、mul.c</a></li><li><a href="#5divc_59" rel="nofollow" target="_self">5、div.c</a></li><li><a href="#6headh_66" rel="nofollow" target="_self">6、head.h</a></li></ul> 
  </li><li><a href="#Makefile__78" rel="nofollow" target="_self">三、Makefile 基础规则</a></li><li><ul><li><a href="#1_88" rel="nofollow" target="_self">1、一个规则</a></li><li><a href="#2_clean_215" rel="nofollow" target="_self">2、两个函数和 clean</a></li><li><ul><li><a href="#2__216" rel="nofollow" target="_self">①、2 个函数：</a></li><li><a href="#clean_255" rel="nofollow" target="_self">②、clean</a></li></ul> 
   </li><li><a href="#3_301" rel="nofollow" target="_self">3、三个自动变量和模式规则</a></li><li><ul><li><a href="#_302" rel="nofollow" target="_self">①、三个自动变量</a></li><li><a href="#_347" rel="nofollow" target="_self">②、模式规则</a></li><li><ul><li><a href="#1_348" rel="nofollow" target="_self">&lt;1&gt;、模式规则</a></li><li><a href="#2_419" rel="nofollow" target="_self">&lt;2&gt;、静态模式规则</a></li></ul> 
   </li></ul> 
   </li><li><a href="#4_446" rel="nofollow" target="_self">4、伪目标</a></li><li><a href="#5_478" rel="nofollow" target="_self">5、编译时的参数</a></li><li><a href="#6make__505" rel="nofollow" target="_self">6、make 的参数</a></li></ul> 
  </li><li><a href="#_513" rel="nofollow" target="_self">四、工程源码优化</a></li><li><a href="#Makefile__550" rel="nofollow" target="_self">五、Makefile 语法</a></li><li><ul><li><a href="#1_551" rel="nofollow" target="_self">1、两种变量</a></li><li><a href="#2_598" rel="nofollow" target="_self">2、赋值方法</a></li><li><ul><li><a href="#__605" rel="nofollow" target="_self">①、+=（附加） 使用案例</a></li><li><a href="#__620" rel="nofollow" target="_self">②、?= 使用案例</a></li></ul> 
  </li></ul> 
  </li><li><a href="#Makefile__639" rel="nofollow" target="_self">六、Makefile 函数</a></li><li><ul><li><a href="#1foreach__649" rel="nofollow" target="_self">1、foreach 函数</a></li><li><a href="#2filter__filterout__671" rel="nofollow" target="_self">2、filter 和 filter-out 函数</a></li><li><a href="#3patsubst_699" rel="nofollow" target="_self">3、patsubst</a></li></ul> 
 </li></ul> 
</div> 
<div class="toc"> 
 <h4><a name="t0"></a>文章目录</h4> 
 <ul><li><a href="#_4" rel="nofollow" target="_self">前言</a></li><li><a href="#Makefile__11" rel="nofollow" target="_self">一、Makefile 介绍</a></li><li><a href="#_19" rel="nofollow" target="_self">二、示例源码</a></li><li><ul><li><a href="#1helloc_21" rel="nofollow" target="_self">1、hello.c</a></li><li><a href="#2addc_38" rel="nofollow" target="_self">2、add.c</a></li><li><a href="#3subc_45" rel="nofollow" target="_self">3、sub.c</a></li><li><a href="#4mulc_52" rel="nofollow" target="_self">4、mul.c</a></li><li><a href="#5divc_59" rel="nofollow" target="_self">5、div.c</a></li><li><a href="#6headh_66" rel="nofollow" target="_self">6、head.h</a></li></ul> 
  </li><li><a href="#Makefile__78" rel="nofollow" target="_self">三、Makefile 基础规则</a></li><li><ul><li><a href="#1_88" rel="nofollow" target="_self">1、一个规则</a></li><li><a href="#2_clean_215" rel="nofollow" target="_self">2、两个函数和 clean</a></li><li><ul><li><a href="#2__216" rel="nofollow" target="_self">①、2 个函数：</a></li><li><a href="#clean_255" rel="nofollow" target="_self">②、clean</a></li></ul> 
   </li><li><a href="#3_301" rel="nofollow" target="_self">3、三个自动变量和模式规则</a></li><li><ul><li><a href="#_302" rel="nofollow" target="_self">①、三个自动变量</a></li><li><a href="#_347" rel="nofollow" target="_self">②、模式规则</a></li><li><ul><li><a href="#1_348" rel="nofollow" target="_self">&lt;1&gt;、模式规则</a></li><li><a href="#2_419" rel="nofollow" target="_self">&lt;2&gt;、静态模式规则</a></li></ul> 
   </li></ul> 
   </li><li><a href="#4_446" rel="nofollow" target="_self">4、伪目标</a></li><li><a href="#5_478" rel="nofollow" target="_self">5、编译时的参数</a></li><li><a href="#6make__505" rel="nofollow" target="_self">6、make 的参数</a></li></ul> 
  </li><li><a href="#_513" rel="nofollow" target="_self">四、工程源码优化</a></li><li><a href="#Makefile__550" rel="nofollow" target="_self">五、Makefile 语法</a></li><li><ul><li><a href="#1_551" rel="nofollow" target="_self">1、两种变量</a></li><li><a href="#2_598" rel="nofollow" target="_self">2、赋值方法</a></li><li><ul><li><a href="#__605" rel="nofollow" target="_self">①、+=（附加） 使用案例</a></li><li><a href="#__620" rel="nofollow" target="_self">②、?= 使用案例</a></li></ul> 
  </li></ul> 
  </li><li><a href="#Makefile__639" rel="nofollow" target="_self">六、Makefile 函数</a></li><li><ul><li><a href="#1foreach__649" rel="nofollow" target="_self">1、foreach 函数</a></li><li><a href="#2filter__filterout__671" rel="nofollow" target="_self">2、filter 和 filter-out 函数</a></li><li><a href="#3patsubst_699" rel="nofollow" target="_self">3、patsubst</a></li></ul> 
 </li></ul> 
</div><p></p> 
<hr> 
<h2><a name="t1"></a><a id="_4"></a>前言</h2> 
<p><a href="https://so.csdn.net/so/search?q=makefile&amp;spm=1001.2101.3001.7020" target="_blank" class="hl hl-1" data-report-click="{&quot;spm&quot;:&quot;1001.2101.3001.7020&quot;,&quot;dest&quot;:&quot;https://so.csdn.net/so/search?q=makefile&amp;spm=1001.2101.3001.7020&quot;,&quot;extra&quot;:&quot;{\&quot;searchword\&quot;:\&quot;makefile\&quot;}&quot;}" data-tit="makefile" data-pretit="makefile">makefile</a> 关系到了整个工程的编译规则。一个工程中的源文件不计其数，并且按类型、功能、模块分别放在若干个目录中，makefile 定义了一系列的规则来指定，哪些文件需要先编译，哪些文件需要后编译，哪些文件需要重新编译，甚至于进行更复杂的功能操作，因为 makefile 就像一个 Shell 脚本一样，其中也可以执行操作系统的命令。</p> 
<p>本文记录了 Makefile 的使用。</p> 
<hr> 
<h2><a name="t2"></a><a id="Makefile__11"></a>一、Makefile 介绍</h2> 
<p>Makefile 是一个名为 GNU-Make 软件所需要的脚本文件，该脚本文件可以指导 Make 软件控制 arm-gcc 等工具链去编译工程文件最终得到可执行文件，几乎所有的 <span class="words-blog hl-git-1" data-tit="Linux" data-pretit="linux">Linux</span> 发行版都内置了 GNU-Make 软件，VScode 等多种 IDE 也内置了 Make 程序。<strong>说白了，Makefile 就是用来管理项目的。</strong></p> 
<p>你见到的 <strong>xxx.mk</strong> 文件或者 <strong>Makefile</strong> 都统称为 Makefile 脚本文件。</p> 
<p><font color="red">命名只能为 makefile 或者是 Makefile</font>，因为只有这两种命名方式才能被 make 命令识别。</p> 
<p>Makefile 脚本文件的语法学习可以参考：<a href="https://seisman.github.io/how-to-write-makefile/functions.html" rel="nofollow">跟我一起写Makefile 陈皓</a></p> 
<h2><a name="t3"></a><a id="_19"></a>二、示例源码</h2> 
<p>这里放出供下面 <strong>Makefile 基础规则</strong>中用来测试的源码。</p> 
<h3><a name="t4"></a><a id="1helloc_21"></a>1、hello.c</h3> 
<pre data-index="0" class="set-code-show prettyprint" name="code"><code class="prism language-c has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token macro property"><span class="token directive-hash">#</span><span class="token directive keyword">include</span> <span class="token string">&lt;stdio.h&gt;</span></span>
<span class="token macro property"><span class="token directive-hash">#</span><span class="token directive keyword">include</span> <span class="token string">"head.h"</span></span>

<span class="token keyword">int</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token keyword">int</span> argc<span class="token punctuation">,</span> <span class="token keyword">char</span> <span class="token operator">*</span>argv<span class="token punctuation">[</span><span class="token punctuation">]</span><span class="token punctuation">)</span>
<span class="token punctuation">{<!-- --></span>
    <span class="token keyword">int</span> a <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span> <span class="token keyword">int</span> b <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>

    <span class="token function">printf</span><span class="token punctuation">(</span><span class="token string">"%d+%d=%d\n"</span><span class="token punctuation">,</span> a<span class="token punctuation">,</span> b<span class="token punctuation">,</span> <span class="token function">add</span><span class="token punctuation">(</span>a<span class="token punctuation">,</span> b<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token function">printf</span><span class="token punctuation">(</span><span class="token string">"%d-%d=%d\n"</span><span class="token punctuation">,</span> a<span class="token punctuation">,</span> b<span class="token punctuation">,</span> <span class="token function">sub</span><span class="token punctuation">(</span>a<span class="token punctuation">,</span> b<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token function">printf</span><span class="token punctuation">(</span><span class="token string">"%d/%d=%d\n"</span><span class="token punctuation">,</span> a<span class="token punctuation">,</span> b<span class="token punctuation">,</span> <span class="token function">div</span><span class="token punctuation">(</span>a<span class="token punctuation">,</span> b<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token function">printf</span><span class="token punctuation">(</span><span class="token string">"%dx%d=%d\n"</span><span class="token punctuation">,</span> a<span class="token punctuation">,</span> b<span class="token punctuation">,</span> <span class="token function">mul</span><span class="token punctuation">(</span>a<span class="token punctuation">,</span> b<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

	<span class="token keyword">return</span> <span class="token number">0</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li><li style="color: rgb(153, 153, 153);">14</li></ul></pre> 
<h3><a name="t5"></a><a id="2addc_38"></a>2、add.c</h3> 
<pre data-index="1" class="set-code-show prettyprint" name="code"><code class="prism language-c has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token keyword">int</span> <span class="token function">add</span><span class="token punctuation">(</span><span class="token keyword">int</span> a<span class="token punctuation">,</span> <span class="token keyword">int</span> b<span class="token punctuation">)</span>
<span class="token punctuation">{<!-- --></span>
	<span class="token keyword">return</span> a<span class="token operator">+</span>b<span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li></ul></pre> 
<h3><a name="t6"></a><a id="3subc_45"></a>3、sub.c</h3> 
<pre data-index="2" class="set-code-show prettyprint" name="code"><code class="prism language-c has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token keyword">int</span> <span class="token function">sub</span><span class="token punctuation">(</span><span class="token keyword">int</span> a<span class="token punctuation">,</span> <span class="token keyword">int</span> b<span class="token punctuation">)</span>
<span class="token punctuation">{<!-- --></span>
	<span class="token keyword">return</span> a<span class="token operator">-</span>b<span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li></ul></pre> 
<h3><a name="t7"></a><a id="4mulc_52"></a>4、mul.c</h3> 
<pre data-index="3" class="set-code-show prettyprint" name="code"><code class="prism language-c has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token keyword">int</span> <span class="token function">mul</span><span class="token punctuation">(</span><span class="token keyword">int</span> a<span class="token punctuation">,</span> <span class="token keyword">int</span> b<span class="token punctuation">)</span>
<span class="token punctuation">{<!-- --></span>
	<span class="token keyword">return</span> a<span class="token operator">*</span>b<span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li></ul></pre> 
<h3><a name="t8"></a><a id="5divc_59"></a>5、div.c</h3> 
<pre data-index="4" class="set-code-show prettyprint" name="code"><code class="prism language-c has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token keyword">int</span> <span class="token function">div</span><span class="token punctuation">(</span><span class="token keyword">int</span> a<span class="token punctuation">,</span> <span class="token keyword">int</span> b<span class="token punctuation">)</span>
<span class="token punctuation">{<!-- --></span>
	<span class="token keyword">return</span> a<span class="token operator">/</span>b<span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li></ul></pre> 
<h3><a name="t9"></a><a id="6headh_66"></a>6、head.h</h3> 
<pre data-index="5" class="set-code-show prettyprint" name="code"><code class="prism language-c has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token macro property"><span class="token directive-hash">#</span><span class="token directive keyword">ifndef</span> <span class="token expression">_HEAD_H_</span></span>
<span class="token macro property"><span class="token directive-hash">#</span><span class="token directive keyword">define</span> <span class="token macro-name">_HEAD_H_</span></span>

<span class="token keyword">int</span> <span class="token function">add</span><span class="token punctuation">(</span><span class="token keyword">int</span> <span class="token punctuation">,</span> <span class="token keyword">int</span> <span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token keyword">int</span> <span class="token function">sub</span><span class="token punctuation">(</span><span class="token keyword">int</span> <span class="token punctuation">,</span> <span class="token keyword">int</span> <span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token keyword">int</span> <span class="token function">div</span><span class="token punctuation">(</span><span class="token keyword">int</span> <span class="token punctuation">,</span> <span class="token keyword">int</span> <span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token keyword">int</span> <span class="token function">mul</span><span class="token punctuation">(</span><span class="token keyword">int</span> <span class="token punctuation">,</span> <span class="token keyword">int</span> <span class="token punctuation">)</span><span class="token punctuation">;</span>

<span class="token macro property"><span class="token directive-hash">#</span><span class="token directive keyword">endif</span></span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li></ul></pre> 
<h2><a name="t10"></a><a id="Makefile__78"></a>三、Makefile 基础规则</h2> 
<p><strong>想要掌握 makefile，首先需要了解两个概念，⼀个是目标（target），另⼀个就是依赖（dependency）</strong>。目标就是指要干什么，或说运行 make 后生成什么，而依赖是告诉 make 如何去做以实现目标。在 Makefile 中，目标和依赖是通过规则（rule）来表达的。</p> 
<p><strong>makefile 的依赖是从上至下的，换句话说就是目标文件是第一句里的目标， 如果不满足执行依赖，就会继续向下执行</strong>。如果满足了生成目标的依赖，就不会再继续向下执行了。make 会自动寻找规则里需要的材料文件，执行规则下面的行为生成规则中的目标。</p> 
<p><strong>Makefile 三要素：</strong><br> <img src="https://i-blog.csdnimg.cn/blog_migrate/3f6c93776798cf5381c23d9626b97a0e.png" alt="在这里插入图片描述"><br> <strong>工作原理：</strong><br> <img src="https://i-blog.csdnimg.cn/blog_migrate/e42e0ee5f1c1f886baf0f37e385c3524.png" alt="在这里插入图片描述"><br> <img src="https://i-blog.csdnimg.cn/blog_migrate/36f9e46233678748d51a4ed0d1811ad3.png" alt="在这里插入图片描述"></p> 
<h3><a name="t11"></a><a id="1_88"></a>1、一个规则</h3> 
<p><strong>1个规则</strong></p> 
<pre data-index="6" class="set-code-show prettyprint" name="code"><code class="prism language-css has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">目标：依赖条件
（一个 tab 缩进）命令
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li></ul></pre> 
<p>①、目标的时间必须晚于依赖条件的时间，否则，更新目标。<br> ②、依赖条件如果不存在，找寻新的规则去产生依赖条件。</p> 
<p><strong>下面来一步一步升级 makefile</strong></p> 
<p>利用上述代码实现第一个版本的 Makefile</p> 
<p><strong>Makefile</strong><font color="red"> 第一版</font></p> 
<pre data-index="7" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">a.out <span class="token builtin class-name">:</span> hello.c add.c sub.c mul.c div.c
	gcc hello.c add.c sub.c mul.c div.c <span class="token parameter variable">-o</span> a.out <span class="token parameter variable">-I</span> ./
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li></ul></pre> 
<p>执行 make ：<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/71d62a52bea188b04479213868d84820.png" alt="在这里插入图片描述"><br> 此时，修改 add.c 为下面</p> 
<p><strong>add.c</strong></p> 
<pre data-index="8" class="set-code-show prettyprint" name="code"><code class="prism language-c has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token keyword">int</span> <span class="token function">add</span><span class="token punctuation">(</span><span class="token keyword">int</span> a<span class="token punctuation">,</span> <span class="token keyword">int</span> b<span class="token punctuation">)</span>
<span class="token punctuation">{<!-- --></span>
	<span class="token keyword">return</span> a<span class="token operator">+</span>b<span class="token operator">+</span><span class="token number">1</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li></ul></pre> 
<p>此时，再使用 make，发现了问题<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/844f18e1f91d8c309d67a718b1969267.png" alt="在这里插入图片描述"><br> 可以看到，只修改 add.c，但是编译的时候，其他.c 文件也重新编译了，这不太科学。明明只改了一个，全部都重新编译了。</p> 
<p>于是将 makefile 改写如下：</p> 
<p><strong>Makefile</strong><font color="red"> 第二版</font></p> 
<pre data-index="9" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">a.out <span class="token builtin class-name">:</span> hello.o add.o sub.o mul.o div.o
	gcc hello.o add.o sub.o mul.o div.o <span class="token parameter variable">-o</span> a.out 

hello.o <span class="token builtin class-name">:</span> hello.c
	gcc <span class="token parameter variable">-c</span> hello.c <span class="token parameter variable">-o</span> hello.o <span class="token parameter variable">-I</span> ./

add.o <span class="token builtin class-name">:</span> add.c
	gcc <span class="token parameter variable">-c</span> add.c <span class="token parameter variable">-o</span> add.o

sub.o <span class="token builtin class-name">:</span> sub.c
	gcc <span class="token parameter variable">-c</span> sub.c <span class="token parameter variable">-o</span> sub.o

mul.o <span class="token builtin class-name">:</span> mul.c
	gcc <span class="token parameter variable">-c</span> mul.c <span class="token parameter variable">-o</span> mul.o

div.o <span class="token builtin class-name">:</span> div.c
	gcc <span class="token parameter variable">-c</span> div.c <span class="token parameter variable">-o</span> div.o
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li><li style="color: rgb(153, 153, 153);">14</li><li style="color: rgb(153, 153, 153);">15</li><li style="color: rgb(153, 153, 153);">16</li><li style="color: rgb(153, 153, 153);">17</li></ul></pre> 
<p>执行 make 指令如下：<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/c01e090d49864953c2f5237dbbea25b3.png" alt="在这里插入图片描述"><br> 此时，再将 add.c 改为最开始的代码：</p> 
<p><strong>add.c</strong></p> 
<pre data-index="10" class="set-code-show prettyprint" name="code"><code class="prism language-c has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token keyword">int</span> <span class="token function">add</span><span class="token punctuation">(</span><span class="token keyword">int</span> a<span class="token punctuation">,</span> <span class="token keyword">int</span> b<span class="token punctuation">)</span>
<span class="token punctuation">{<!-- --></span>
	<span class="token keyword">return</span> a<span class="token operator">+</span>b<span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li></ul></pre> 
<p>执行 make 指令如下：<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/68da04b34c9633151fd87841f2c5a0a7.png" alt="在这里插入图片描述"><br> 可以看到，只重新编译了修改过的 add.c 和最终目标</p> 
<p><code>makefile 检测原理：修改文件后，文件的修改时间发生变化，会出现目标文件的时间早于作为依赖材料的时间，出现这种情况的文件会重新编译。修改 add.c 后， add.o 的时间就早于 add.c ， a.out 的时间也早于 add.o 的时间了，于是重新编译这俩文件了。</code></p> 
<p>关于 makefile 指定目标问题，先修改 makefile 如下：</p> 
<p><strong>Makefile</strong><font color="red"> 第三版</font></p> 
<pre data-index="11" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">hello.o <span class="token builtin class-name">:</span> hello.c
	gcc <span class="token parameter variable">-c</span> hello.c <span class="token parameter variable">-o</span> hello.o <span class="token parameter variable">-I</span> ./

add.o <span class="token builtin class-name">:</span> add.c
	gcc <span class="token parameter variable">-c</span> add.c <span class="token parameter variable">-o</span> add.o

sub.o <span class="token builtin class-name">:</span> sub.c
	gcc <span class="token parameter variable">-c</span> sub.c <span class="token parameter variable">-o</span> sub.o

mul.o <span class="token builtin class-name">:</span> mul.c
	gcc <span class="token parameter variable">-c</span> mul.c <span class="token parameter variable">-o</span> mul.o

div.o <span class="token builtin class-name">:</span> div.c
	gcc <span class="token parameter variable">-c</span> div.c <span class="token parameter variable">-o</span> div.o

a.out <span class="token builtin class-name">:</span> hello.o add.o sub.o mul.o div.o
	gcc hello.o add.o sub.o mul.o div.o <span class="token parameter variable">-o</span> a.out 
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li><li style="color: rgb(153, 153, 153);">14</li><li style="color: rgb(153, 153, 153);">15</li><li style="color: rgb(153, 153, 153);">16</li><li style="color: rgb(153, 153, 153);">17</li></ul></pre> 
<p>只是将 a.out 放在了文件末尾<br> 执行 make，如下：<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/05a735ed00c072cfa9d71f9c3df0cbc7.png" alt="在这里插入图片描述"><br> 这是因为， makefile 默认第一个目标文件为终极目标，生成就跑路，这时候可以用 ALL 来指定终极目标。</p> 
<pre data-index="12" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">ALL：指定 makefile 的终极目标。
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<p>指定目标的 makefile 如下：</p> 
<p><strong>Makefile</strong><font color="red"> 第四版</font></p> 
<pre data-index="13" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">ALL <span class="token builtin class-name">:</span> a.out

hello.o <span class="token builtin class-name">:</span> hello.c
	gcc <span class="token parameter variable">-c</span> hello.c <span class="token parameter variable">-o</span> hello.o <span class="token parameter variable">-I</span> ./

add.o <span class="token builtin class-name">:</span> add.c
	gcc <span class="token parameter variable">-c</span> add.c <span class="token parameter variable">-o</span> add.o

sub.o <span class="token builtin class-name">:</span> sub.c
	gcc <span class="token parameter variable">-c</span> sub.c <span class="token parameter variable">-o</span> sub.o

mul.o <span class="token builtin class-name">:</span> mul.c
	gcc <span class="token parameter variable">-c</span> mul.c <span class="token parameter variable">-o</span> mul.o

div.o <span class="token builtin class-name">:</span> div.c
	gcc <span class="token parameter variable">-c</span> div.c <span class="token parameter variable">-o</span> div.o

a.out <span class="token builtin class-name">:</span> hello.o add.o sub.o mul.o div.o
	gcc hello.o add.o sub.o mul.o div.o <span class="token parameter variable">-o</span> a.out
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li><li style="color: rgb(153, 153, 153);">14</li><li style="color: rgb(153, 153, 153);">15</li><li style="color: rgb(153, 153, 153);">16</li><li style="color: rgb(153, 153, 153);">17</li><li style="color: rgb(153, 153, 153);">18</li><li style="color: rgb(153, 153, 153);">19</li></ul></pre> 
<p>执行：<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/6552133160b4244260d6a5e88b8b8050.png" alt="在这里插入图片描述"></p> 
<h3><a name="t12"></a><a id="2_clean_215"></a>2、两个函数和 clean</h3> 
<h4><a name="t13"></a><a id="2__216"></a>①、2 个函数：</h4> 
<p>找到当前目录下所有后缀为 .c 的文件，赋值给 src</p> 
<pre data-index="14" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">src <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>wildcard ./*.c<span class="token variable">)</span></span> <span class="token comment"># 匹配当前工作目录下的所有.c 文件。将文件名组成列表，赋值给变量 src。 src = add.c sub.c mul.c div1.c</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<p>把 src 变量所有后缀为 .c 的文件替换成 .o</p> 
<pre data-index="15" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">obj <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>patsubst %.c, %.o, <span class="token punctuation">$(</span>src<span class="token punctuation">)</span><span class="token variable">)</span></span> <span class="token comment"># 将参数 3 中，包含参数 1 的部分，替换为参数 2。 obj = add.o sub.o mul.c div1.o</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<p>用这两个函数修改 makefile 如下：</p> 
<p><strong>Makefile</strong><font color="red"> 第五版</font></p> 
<pre data-index="16" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">src <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>wildcard *.c<span class="token variable">)</span></span> <span class="token comment"># hello.c add.c sub.c mul.c  div.c</span>

obj <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>patsubst %.c, %.o, <span class="token punctuation">$(</span>src<span class="token punctuation">)</span><span class="token variable">)</span></span> <span class="token comment"># hello.o add.o sub.o mul.o div.o</span>

ALL <span class="token builtin class-name">:</span> a.out

hello.o <span class="token builtin class-name">:</span> hello.c
	gcc <span class="token parameter variable">-c</span> hello.c <span class="token parameter variable">-o</span> hello.o <span class="token parameter variable">-I</span> ./

add.o <span class="token builtin class-name">:</span> add.c
	gcc <span class="token parameter variable">-c</span> add.c <span class="token parameter variable">-o</span> add.o

sub.o <span class="token builtin class-name">:</span> sub.c
	gcc <span class="token parameter variable">-c</span> sub.c <span class="token parameter variable">-o</span> sub.o

mul.o <span class="token builtin class-name">:</span> mul.c
	gcc <span class="token parameter variable">-c</span> mul.c <span class="token parameter variable">-o</span> mul.o

div.o <span class="token builtin class-name">:</span> div.c
	gcc <span class="token parameter variable">-c</span> div.c <span class="token parameter variable">-o</span> div.o

a.out <span class="token builtin class-name">:</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span>
	gcc <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> <span class="token parameter variable">-o</span> a.out
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li><li style="color: rgb(153, 153, 153);">14</li><li style="color: rgb(153, 153, 153);">15</li><li style="color: rgb(153, 153, 153);">16</li><li style="color: rgb(153, 153, 153);">17</li><li style="color: rgb(153, 153, 153);">18</li><li style="color: rgb(153, 153, 153);">19</li><li style="color: rgb(153, 153, 153);">20</li><li style="color: rgb(153, 153, 153);">21</li><li style="color: rgb(153, 153, 153);">22</li><li style="color: rgb(153, 153, 153);">23</li></ul></pre> 
<p>执行 make 指令，如下所示：<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/a7be57bbf3bb744d75734630f3d85ad1.png" alt="在这里插入图片描述"></p> 
<h4><a name="t14"></a><a id="clean_255"></a>②、clean</h4> 
<pre data-index="17" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token parameter variable">-rm</span> <span class="token parameter variable">-rf</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> a.out <span class="token comment"># “-” ：作用是，删除不存在文件时，不报错。顺序执行结束。</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<p>每次要删除 .o 文件，很恶心，于是改写 makefile 如下：<br> 加了 clean 部分</p> 
<p><strong>Makefile</strong><font color="red"> 第六版</font></p> 
<pre data-index="18" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">src <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>wildcard *.c<span class="token variable">)</span></span> <span class="token comment"># hello.c add.c sub.c mul.c  div.c</span>

obj <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>patsubst %.c, %.o, <span class="token punctuation">$(</span>src<span class="token punctuation">)</span><span class="token variable">)</span></span> <span class="token comment"># hello.o add.o sub.o mul.o div.o</span>

ALL <span class="token builtin class-name">:</span> a.out

hello.o <span class="token builtin class-name">:</span> hello.c
	gcc <span class="token parameter variable">-c</span> hello.c <span class="token parameter variable">-o</span> hello.o <span class="token parameter variable">-I</span> ./

add.o <span class="token builtin class-name">:</span> add.c
	gcc <span class="token parameter variable">-c</span> add.c <span class="token parameter variable">-o</span> add.o

sub.o <span class="token builtin class-name">:</span> sub.c
	gcc <span class="token parameter variable">-c</span> sub.c <span class="token parameter variable">-o</span> sub.o

mul.o <span class="token builtin class-name">:</span> mul.c
	gcc <span class="token parameter variable">-c</span> mul.c <span class="token parameter variable">-o</span> mul.o

div.o <span class="token builtin class-name">:</span> div.c
	gcc <span class="token parameter variable">-c</span> div.c <span class="token parameter variable">-o</span> div.o

a.out <span class="token builtin class-name">:</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span>
	gcc <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> <span class="token parameter variable">-o</span> a.out 

clean <span class="token builtin class-name">:</span>
	<span class="token parameter variable">-rm</span> <span class="token parameter variable">-rf</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> a.out
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li><li style="color: rgb(153, 153, 153);">14</li><li style="color: rgb(153, 153, 153);">15</li><li style="color: rgb(153, 153, 153);">16</li><li style="color: rgb(153, 153, 153);">17</li><li style="color: rgb(153, 153, 153);">18</li><li style="color: rgb(153, 153, 153);">19</li><li style="color: rgb(153, 153, 153);">20</li><li style="color: rgb(153, 153, 153);">21</li><li style="color: rgb(153, 153, 153);">22</li><li style="color: rgb(153, 153, 153);">23</li><li style="color: rgb(153, 153, 153);">24</li><li style="color: rgb(153, 153, 153);">25</li><li style="color: rgb(153, 153, 153);">26</li></ul></pre> 
<p><code>rm 前面的 - ，代表出错依然执行。比如，待删除文件集合是 5 个，已经手动删除了 1 个，就只剩下 4 个，然而删除命令里面还是 5 个的集合，就会有删除不存在文件的问题，不加这 - ，就会报错，告诉你有一个文件找不到。加了-就不会因为这个报错。</code></p> 
<p>执行 make<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/cb8a324a1bfaba180dcd86e81a834698.png" alt="在这里插入图片描述"><br> 由于没有文件变动， a.out 的时间戳晚于所有依赖文件，这里 make 就没干活</p> 
<p>于是，执行时加新指令，先模拟执行 clean 部分：<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/7759cb18844e20f4d69b2bb1ee31424e.png" alt="在这里插入图片描述"><br> 确定没有问题，执行<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/f32a9b5ddaa20fefc8c2b0e86350bfa7.png" alt="在这里插入图片描述"></p> 
<h3><a name="t15"></a><a id="3_301"></a>3、三个自动变量和模式规则</h3> 
<h4><a name="t16"></a><a id="_302"></a>①、三个自动变量</h4> 
<pre data-index="19" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token variable">$@</span>	<span class="token comment"># 在规则的命令中，表示规则中的目标。</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<pre data-index="20" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">$^	<span class="token comment"># 在规则的命令中，表示所有依赖条件。组成一个列表，以空格隔开，如果这个列表中有重复项，则去重</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<pre data-index="21" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">$<span class="token operator">&lt;</span>	<span class="token comment"># 在规则的命令中，表示第一个依赖条件。如果将该变量应用在模式规则中，它可将依赖条件列表中的依赖依次取出，套用模式规则。</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<p>用自动变量修改 makefile，如下：</p> 
<p><strong>Makefile</strong><font color="red"> 第七版</font></p> 
<pre data-index="22" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">src <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>wildcard *.c<span class="token variable">)</span></span> <span class="token comment"># hello.c add.c sub.c mul.c  div.c</span>

obj <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>patsubst %.c, %.o, <span class="token punctuation">$(</span>src<span class="token punctuation">)</span><span class="token variable">)</span></span> <span class="token comment"># hello.o add.o sub.o mul.o div.o</span>

ALL <span class="token builtin class-name">:</span> a.out

hello.o <span class="token builtin class-name">:</span> hello.c
	gcc <span class="token parameter variable">-c</span> $<span class="token operator">&lt;</span> <span class="token parameter variable">-o</span> <span class="token variable">$@</span> <span class="token parameter variable">-I</span> ./

add.o <span class="token builtin class-name">:</span> add.c
	gcc <span class="token parameter variable">-c</span> $<span class="token operator">&lt;</span> <span class="token parameter variable">-o</span> <span class="token variable">$@</span>

sub.o <span class="token builtin class-name">:</span> sub.c
	gcc <span class="token parameter variable">-c</span> $<span class="token operator">&lt;</span> <span class="token parameter variable">-o</span> <span class="token variable">$@</span>

mul.o <span class="token builtin class-name">:</span> mul.c
	gcc <span class="token parameter variable">-c</span> $<span class="token operator">&lt;</span> <span class="token parameter variable">-o</span> <span class="token variable">$@</span>

div.o <span class="token builtin class-name">:</span> div.c
	gcc <span class="token parameter variable">-c</span> $<span class="token operator">&lt;</span> <span class="token parameter variable">-o</span> <span class="token variable">$@</span>

a.out <span class="token builtin class-name">:</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span>
	gcc $^ <span class="token parameter variable">-o</span> <span class="token variable">$@</span>

clean <span class="token builtin class-name">:</span>
	<span class="token parameter variable">-rm</span> <span class="token parameter variable">-rf</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> a.out
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li><li style="color: rgb(153, 153, 153);">14</li><li style="color: rgb(153, 153, 153);">15</li><li style="color: rgb(153, 153, 153);">16</li><li style="color: rgb(153, 153, 153);">17</li><li style="color: rgb(153, 153, 153);">18</li><li style="color: rgb(153, 153, 153);">19</li><li style="color: rgb(153, 153, 153);">20</li><li style="color: rgb(153, 153, 153);">21</li><li style="color: rgb(153, 153, 153);">22</li><li style="color: rgb(153, 153, 153);">23</li><li style="color: rgb(153, 153, 153);">24</li><li style="color: rgb(153, 153, 153);">25</li><li style="color: rgb(153, 153, 153);">26</li></ul></pre> 
<p>sub， add 这些指令中使用 $&lt; 和 $^ 都能达到效果，但是为了模式规则，所以使用的 $&lt;<br> 执行 make，如下：<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/4e75177af9bc82c0f9dbfb6eb3948f16.png" alt="在这里插入图片描述"><br> 再来，**上面这个 makefile，可扩展性不行。**比如，要添加一个平方函数，就需要在 makefile 里面增加平方函数的部分。<strong>不科学， 所以，模式规则就来了</strong>。</p> 
<h4><a name="t17"></a><a id="_347"></a>②、模式规则</h4> 
<h5><a id="1_348"></a>&lt;1&gt;、模式规则</h5> 
<pre data-index="23" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">%.o <span class="token builtin class-name">:</span> %.c
	gcc <span class="token parameter variable">-c</span> $<span class="token operator">&lt;</span> <span class="token parameter variable">-o</span> %@
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li></ul></pre> 
<p>修改 makefile，如下：</p> 
<p><strong>Makefile</strong><font color="red"> 第八版</font></p> 
<pre data-index="24" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">src <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>wildcard *.c<span class="token variable">)</span></span> <span class="token comment"># hello.c add.c sub.c mul.c  div.c</span>

obj <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>patsubst %.c, %.o, <span class="token punctuation">$(</span>src<span class="token punctuation">)</span><span class="token variable">)</span></span> <span class="token comment"># hello.o add.o sub.o mul.o div.o</span>

ALL <span class="token builtin class-name">:</span> a.out

%.o <span class="token builtin class-name">:</span> %.c
	gcc <span class="token parameter variable">-c</span> $<span class="token operator">&lt;</span> <span class="token parameter variable">-o</span> <span class="token variable">$@</span>

a.out <span class="token builtin class-name">:</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span>
	gcc $^ <span class="token parameter variable">-o</span> <span class="token variable">$@</span>

clean <span class="token builtin class-name">:</span>
	<span class="token parameter variable">-rm</span> <span class="token parameter variable">-rf</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> a.out
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li><li style="color: rgb(153, 153, 153);">14</li></ul></pre> 
<p>执行 make，如下：<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/ba112e4ae18719d06bdd57738281093f.png" alt="在这里插入图片描述"><br> 这时，增加一个 square 函数， 并添加 square.c 文件如下：</p> 
<p><strong>square.c</strong></p> 
<pre data-index="25" class="set-code-show prettyprint" name="code"><code class="prism language-c has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token keyword">int</span> <span class="token function">suqare</span><span class="token punctuation">(</span><span class="token keyword">int</span> a<span class="token punctuation">)</span>
<span class="token punctuation">{<!-- --></span>
    <span class="token keyword">return</span> a<span class="token operator">*</span>a<span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li></ul></pre> 
<p>head.h 做如下修改：<br> <strong>head.h</strong></p> 
<pre data-index="26" class="set-code-show prettyprint" name="code"><code class="prism language-c has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token macro property"><span class="token directive-hash">#</span><span class="token directive keyword">ifndef</span> <span class="token expression">_HEAD_H_</span></span>
<span class="token macro property"><span class="token directive-hash">#</span><span class="token directive keyword">define</span> <span class="token macro-name">_HEAD_H_</span></span>

<span class="token keyword">int</span> <span class="token function">add</span><span class="token punctuation">(</span><span class="token keyword">int</span> <span class="token punctuation">,</span> <span class="token keyword">int</span> <span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token keyword">int</span> <span class="token function">sub</span><span class="token punctuation">(</span><span class="token keyword">int</span> <span class="token punctuation">,</span> <span class="token keyword">int</span> <span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token keyword">int</span> <span class="token function">div</span><span class="token punctuation">(</span><span class="token keyword">int</span> <span class="token punctuation">,</span> <span class="token keyword">int</span> <span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token keyword">int</span> <span class="token function">mul</span><span class="token punctuation">(</span><span class="token keyword">int</span> <span class="token punctuation">,</span> <span class="token keyword">int</span> <span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token keyword">int</span> <span class="token function">square</span><span class="token punctuation">(</span><span class="token keyword">int</span> <span class="token punctuation">)</span><span class="token punctuation">;</span>

<span class="token macro property"><span class="token directive-hash">#</span><span class="token directive keyword">endif</span></span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li></ul></pre> 
<p>hello.c 做如下修改：<br> <strong>hello.c</strong></p> 
<pre data-index="27" class="set-code-show prettyprint" name="code"><code class="prism language-c has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token macro property"><span class="token directive-hash">#</span><span class="token directive keyword">include</span> <span class="token string">&lt;stdio.h&gt;</span></span>
<span class="token macro property"><span class="token directive-hash">#</span><span class="token directive keyword">include</span> <span class="token string">"head.h"</span></span>

<span class="token keyword">int</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token keyword">int</span> argc<span class="token punctuation">,</span> <span class="token keyword">char</span> <span class="token operator">*</span>argv<span class="token punctuation">[</span><span class="token punctuation">]</span><span class="token punctuation">)</span>
<span class="token punctuation">{<!-- --></span>
    <span class="token keyword">int</span> a <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span> <span class="token keyword">int</span> b <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>

    <span class="token function">printf</span><span class="token punctuation">(</span><span class="token string">"%d+%d=%d\n"</span><span class="token punctuation">,</span> a<span class="token punctuation">,</span> b<span class="token punctuation">,</span> <span class="token function">add</span><span class="token punctuation">(</span>a<span class="token punctuation">,</span> b<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token function">printf</span><span class="token punctuation">(</span><span class="token string">"%d-%d=%d\n"</span><span class="token punctuation">,</span> a<span class="token punctuation">,</span> b<span class="token punctuation">,</span> <span class="token function">sub</span><span class="token punctuation">(</span>a<span class="token punctuation">,</span> b<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token function">printf</span><span class="token punctuation">(</span><span class="token string">"%d/%d=%d\n"</span><span class="token punctuation">,</span> a<span class="token punctuation">,</span> b<span class="token punctuation">,</span> <span class="token function">div</span><span class="token punctuation">(</span>a<span class="token punctuation">,</span> b<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token function">printf</span><span class="token punctuation">(</span><span class="token string">"%dx%d=%d\n"</span><span class="token punctuation">,</span> a<span class="token punctuation">,</span> b<span class="token punctuation">,</span> <span class="token function">mul</span><span class="token punctuation">(</span>a<span class="token punctuation">,</span> b<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
    <span class="token function">printf</span><span class="token punctuation">(</span><span class="token string">"%d*%d=%d\n"</span><span class="token punctuation">,</span> a<span class="token punctuation">,</span> a<span class="token punctuation">,</span> <span class="token function">mul</span><span class="token punctuation">(</span>a<span class="token punctuation">,</span> a<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

	<span class="token keyword">return</span> <span class="token number">0</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li><li style="color: rgb(153, 153, 153);">14</li><li style="color: rgb(153, 153, 153);">15</li></ul></pre> 
<p>直接执行 make：<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/935360c46e11f676b897115bb0c04586.png" alt="在这里插入图片描述"><br> 增加函数的时候，不用改 makefile，只需要增加.c 文件，改一下源码，就行。很强势。</p> 
<h5><a id="2_419"></a>&lt;2&gt;、静态模式规则</h5> 
<p>继续优化 makefile，<strong>使用静态模式规则，就是指定模式规则给谁用</strong>，这里指定模式规则给 obj 用，以后文件多了，文件集合会有很多个，就需要指定哪个文件集合用什么规则</p> 
<pre data-index="28" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> <span class="token builtin class-name">:</span> %.o <span class="token builtin class-name">:</span> %.c
	gcc <span class="token parameter variable">-c</span> $<span class="token operator">&lt;</span> <span class="token parameter variable">-o</span> %@
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li></ul></pre> 
<p>修改后 makefile 如下：</p> 
<p><strong>Makefile</strong><font color="red"> 第八版</font></p> 
<pre data-index="29" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">src <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>wildcard *.c<span class="token variable">)</span></span> <span class="token comment"># hello.c add.c sub.c mul.c  div.c</span>

obj <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>patsubst %.c, %.o, <span class="token punctuation">$(</span>src<span class="token punctuation">)</span><span class="token variable">)</span></span> <span class="token comment"># hello.o add.o sub.o mul.o div.o</span>

ALL <span class="token builtin class-name">:</span> a.out

<span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> <span class="token builtin class-name">:</span> %.o <span class="token builtin class-name">:</span> %.c
	gcc <span class="token parameter variable">-c</span> $<span class="token operator">&lt;</span> <span class="token parameter variable">-o</span> <span class="token variable">$@</span>

a.out <span class="token builtin class-name">:</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span>
	gcc $^ <span class="token parameter variable">-o</span> <span class="token variable">$@</span>

clean <span class="token builtin class-name">:</span>
	<span class="token parameter variable">-rm</span> <span class="token parameter variable">-rf</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> a.out
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li><li style="color: rgb(153, 153, 153);">14</li></ul></pre> 
<p>运行如下：<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/813c69e03953c0b9e9049955f3c460ae.png" alt="在这里插入图片描述"></p> 
<h3><a name="t18"></a><a id="4_446"></a>4、伪目标</h3> 
<pre data-index="30" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">.PHONY: clean ALL
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<p>再来一个扩展，当前文件夹下有 ALL 文件或者 clean 文件时，会导致 makefile 瘫痪，如下所示， make clean 没有工作<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/3e5cfdff2ac02fd2ed9e16cc3beac2e5.png" alt="在这里插入图片描述"><br> 用伪目标来解决， 添加一行 .PHONY: clean ALL</p> 
<p>makefile 如下所示：</p> 
<p><strong>Makefile</strong><font color="red"> 第九版</font></p> 
<pre data-index="31" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">src <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>wildcard *.c<span class="token variable">)</span></span> <span class="token comment"># hello.c add.c sub.c mul.c  div.c</span>

obj <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>patsubst %.c, %.o, <span class="token punctuation">$(</span>src<span class="token punctuation">)</span><span class="token variable">)</span></span> <span class="token comment"># hello.o add.o sub.o mul.o div.o</span>

ALL <span class="token builtin class-name">:</span> a.out

<span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> <span class="token builtin class-name">:</span> %.o <span class="token builtin class-name">:</span> %.c
	gcc <span class="token parameter variable">-c</span> $<span class="token operator">&lt;</span> <span class="token parameter variable">-o</span> <span class="token variable">$@</span>

a.out <span class="token builtin class-name">:</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span>
	gcc $^ <span class="token parameter variable">-o</span> <span class="token variable">$@</span>

clean <span class="token builtin class-name">:</span>
	<span class="token parameter variable">-rm</span> <span class="token parameter variable">-rf</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> a.out

.PHONY <span class="token builtin class-name">:</span> clean ALL
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li><li style="color: rgb(153, 153, 153);">14</li><li style="color: rgb(153, 153, 153);">15</li><li style="color: rgb(153, 153, 153);">16</li></ul></pre> 
<p>再来执行 make clean，就不会受到干扰了<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/c6612101144d23dcef0edf474be38eb0.png" alt="在这里插入图片描述"></p> 
<h3><a name="t19"></a><a id="5_478"></a>5、编译时的参数</h3> 
<p>还有一个扩展就是，编译时的参数， -g，-Wall 这些，可以放在 makefile 里面<br> 修改后 makefile 如下：</p> 
<p><strong>Makefile</strong><font color="red"> 第十版</font></p> 
<pre data-index="32" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">src <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>wildcard *.c<span class="token variable">)</span></span> <span class="token comment"># hello.c add.c sub.c mul.c  div.c</span>

obj <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>patsubst %.c, %.o, <span class="token punctuation">$(</span>src<span class="token punctuation">)</span><span class="token variable">)</span></span> <span class="token comment"># hello.o add.o sub.o mul.o div.o</span>

myArgs <span class="token operator">=</span> <span class="token parameter variable">-Wall</span> <span class="token parameter variable">-g</span>

ALL <span class="token builtin class-name">:</span> a.out

<span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> <span class="token builtin class-name">:</span> %.o <span class="token builtin class-name">:</span> %.c
	gcc <span class="token parameter variable">-c</span> $<span class="token operator">&lt;</span> <span class="token parameter variable">-o</span> <span class="token variable">$@</span> <span class="token variable"><span class="token variable">$(</span>myArgs<span class="token variable">)</span></span>

a.out <span class="token builtin class-name">:</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span>
	gcc $^ <span class="token parameter variable">-o</span> <span class="token variable">$@</span> <span class="token variable"><span class="token variable">$(</span>myArgs<span class="token variable">)</span></span>

clean <span class="token builtin class-name">:</span>
	<span class="token parameter variable">-rm</span> <span class="token parameter variable">-rf</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> a.out

.PHONY <span class="token builtin class-name">:</span> clean ALL
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li><li style="color: rgb(153, 153, 153);">14</li><li style="color: rgb(153, 153, 153);">15</li><li style="color: rgb(153, 153, 153);">16</li><li style="color: rgb(153, 153, 153);">17</li><li style="color: rgb(153, 153, 153);">18</li></ul></pre> 
<p>执行 make，如下：<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/db5302301408cd949c6397cc75acca3c.png" alt="在这里插入图片描述"></p> 
<h3><a name="t20"></a><a id="6make__505"></a>6、make 的参数</h3> 
<p>参数：</p> 
<ul><li>-n：模拟执行 make、 make clean 命令。</li><li>-f：指定文件执行 make 命令。 xxxx.mk</li></ul> 
<p>如果 makefile 的名字变化一下，比如，叫 m6<br> 用 m6 执行 makefile， make -f m6<br> 用 m6 执行 clean make -f m6 clean</p> 
<h2><a name="t21"></a><a id="_513"></a>四、工程源码优化</h2> 
<p>将上述 .c 文件都放到 src 目录中，.h 文件都放在 inc 目录中，所生成的 .o 文件产物都放在 obj 目录中<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/4b9959b9a969d225dcdce6a1cd4218e9.png" alt="在这里插入图片描述"><br> 使用 tree 命令查看树形结构拓扑<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/a1dc752683855df37ada2107f4acf0c4.png" alt="在这里插入图片描述"><br> 修改 makefile 如下，主要是注意 % 的匹配理解，只匹配文件名，目录位置要手动添加</p> 
<p><strong>Makefile</strong><font color="red"> 第十一版</font></p> 
<pre data-index="33" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">src <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>wildcard ./src/*.c<span class="token variable">)</span></span> <span class="token comment"># ./src/hello.c ./src/add.c ...</span>

obj <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>patsubst ./src/%.c, ./obj/%.o, <span class="token punctuation">$(</span>src<span class="token punctuation">)</span><span class="token variable">)</span></span> <span class="token comment"># ./obj/hello.o ./obj/add.o ...</span>

inc_path <span class="token operator">=</span> ./inc

myArgs <span class="token operator">=</span> <span class="token parameter variable">-Wall</span> <span class="token parameter variable">-g</span>

ALL <span class="token builtin class-name">:</span> a.out

<span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> <span class="token builtin class-name">:</span> ./obj/%.o <span class="token builtin class-name">:</span> ./src/%.c
	gcc <span class="token parameter variable">-c</span> $<span class="token operator">&lt;</span> <span class="token parameter variable">-o</span> <span class="token variable">$@</span> <span class="token variable"><span class="token variable">$(</span>myArgs<span class="token variable">)</span></span> <span class="token parameter variable">-I</span> <span class="token variable"><span class="token variable">$(</span>inc_path<span class="token variable">)</span></span>

a.out <span class="token builtin class-name">:</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span>
	gcc $^ <span class="token parameter variable">-o</span> <span class="token variable">$@</span> <span class="token variable"><span class="token variable">$(</span>myArgs<span class="token variable">)</span></span>

clean <span class="token builtin class-name">:</span>
	<span class="token parameter variable">-rm</span> <span class="token parameter variable">-rf</span> <span class="token variable"><span class="token variable">$(</span>obj<span class="token variable">)</span></span> a.out

.PHONY <span class="token builtin class-name">:</span> clean ALL
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li><li style="color: rgb(153, 153, 153);">14</li><li style="color: rgb(153, 153, 153);">15</li><li style="color: rgb(153, 153, 153);">16</li><li style="color: rgb(153, 153, 153);">17</li><li style="color: rgb(153, 153, 153);">18</li><li style="color: rgb(153, 153, 153);">19</li><li style="color: rgb(153, 153, 153);">20</li></ul></pre> 
<p>执行 make 和 make clean，效果如下<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/b31e1c276be79501146b4947c29490be.png" alt="在这里插入图片描述"><br> 如果 makefile 的名字变化一下，比如，叫 m6</p> 
<p>用 m6 执行 makefile， make -f m6<br> 用 m6 执行 clean make -f m6 clean<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/10953362e6b1920b9bb7811c7e720956.png" alt="在这里插入图片描述"></p> 
<h2><a name="t22"></a><a id="Makefile__550"></a>五、Makefile 语法</h2> 
<h3><a name="t23"></a><a id="1_551"></a>1、两种变量</h3> 
<p>在 Makefile 中有两种变量，一种称为即时变量（简单变量），另一种称为延时变量</p> 
<ul><li>即时变量（简单变量） 
  <ul><li><code>A := xxx # A 的值即刻确定，在定义时即确定</code></li></ul> </li><li>延时变量 
  <ul><li><code>B = xxx # B 的值使用到时才确定</code></li></ul> </li></ul> 
<p>编写下面一个 Makefile</p> 
<pre data-index="34" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">A :<span class="token operator">=</span> abc
B <span class="token operator">=</span> <span class="token number">123</span>

all <span class="token builtin class-name">:</span>
	@echo <span class="token variable"><span class="token variable">$(</span>A<span class="token variable">)</span></span>
	@echo <span class="token variable"><span class="token variable">$(</span>B<span class="token variable">)</span></span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li></ul></pre> 
<p>执行 make<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/c9e589dd099aa786a5ec50990beb6d62.png" alt="在这里插入图片描述"><br> 从上面我们看不出即时变量和延时变量的差别，我们再对 Makefile 进行如下修改：</p> 
<pre data-index="35" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">A :<span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>C<span class="token variable">)</span></span>
B <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>C<span class="token variable">)</span></span>
C <span class="token operator">=</span> abc

all <span class="token builtin class-name">:</span>
	@echo A <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>A<span class="token variable">)</span></span>
	@echo B <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>B<span class="token variable">)</span></span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li></ul></pre> 
<p>执行 make<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/9fff12ba3282b68ac5e217ffb0b3e59a.png" alt="在这里插入图片描述"><br> 可以看到 A 的值为空，B 的值为 abc，因为 A 为即时变量，在定义时即确定，所以为空</p> 
<p>修改 Makefile 将 C 的赋值放在最后：</p> 
<pre data-index="36" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">A :<span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>C<span class="token variable">)</span></span>
B <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>C<span class="token variable">)</span></span>
<span class="token comment">#C = abc</span>

all <span class="token builtin class-name">:</span>
	@echo A <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>A<span class="token variable">)</span></span>
	@echo B <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>B<span class="token variable">)</span></span>

C <span class="token operator">=</span> abc
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li></ul></pre> 
<p>执行 make，可以发现结果并不受影响<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/3b0baa0362259ab07610eae3efac1959.png" alt="在这里插入图片描述"><br> 因为当我们执行 make 的时候，会把 Makefile 整个文件读进来进行分析，然后解析里面的变量，所以变量 C 的赋值放在哪里并不受影响</p> 
<h3><a name="t24"></a><a id="2_598"></a>2、赋值方法</h3> 
<pre data-index="37" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">:<span class="token operator">=</span>		<span class="token comment"># 即时变量</span>
<span class="token operator">=</span> 		<span class="token comment"># 延时变量</span>
?<span class="token operator">=</span> 		<span class="token comment"># 延时变量，如果是第 1 次定义才起效，如果在前面该变量已定义则忽略这句</span>
<span class="token operator">+=</span> 		<span class="token comment"># 附加，他是即时变量还是延时变量取决于前面的定义</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li></ul></pre> 
<h4><a name="t25"></a><a id="__605"></a>①、+=（附加） 使用案例</h4> 
<p>如下 Makefile</p> 
<pre data-index="38" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">A :<span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>C<span class="token variable">)</span></span>
B <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>C<span class="token variable">)</span></span>
C <span class="token operator">=</span> <span class="token number">123</span>

all <span class="token builtin class-name">:</span>
	@echo A <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>A<span class="token variable">)</span></span>
	@echo B <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>B<span class="token variable">)</span></span>

C <span class="token operator">+=</span> abc
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li></ul></pre> 
<p>执行 make<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/d8b1b948aa8d2a2b0d14da889c77e14e.png" alt="在这里插入图片描述"></p> 
<h4><a name="t26"></a><a id="__620"></a>②、?= 使用案例</h4> 
<p>修改 Makefile 如下：</p> 
<pre data-index="39" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">A :<span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>C<span class="token variable">)</span></span>
B <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>C<span class="token variable">)</span></span>
C <span class="token operator">=</span> <span class="token number">123</span>

D <span class="token operator">=</span> <span class="token number">777</span>
D ?<span class="token operator">=</span> <span class="token number">888</span>

all <span class="token builtin class-name">:</span>
	@echo A <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>A<span class="token variable">)</span></span>
	@echo B <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>B<span class="token variable">)</span></span>
	@echo D <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>D<span class="token variable">)</span></span>

C <span class="token operator">+=</span> abc
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li><li style="color: rgb(153, 153, 153);">9</li><li style="color: rgb(153, 153, 153);">10</li><li style="color: rgb(153, 153, 153);">11</li><li style="color: rgb(153, 153, 153);">12</li><li style="color: rgb(153, 153, 153);">13</li></ul></pre> 
<p>执行 make<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/b34a8fe936bb03519f3982a9ea5a0398.png" alt="在这里插入图片描述"></p> 
<h2><a name="t27"></a><a id="Makefile__639"></a>六、Makefile 函数</h2> 
<p>函数调用，很像变量的使用，也是以 $ 来标识的，其语法如下：</p> 
<pre data-index="40" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token variable"><span class="token variable">$(</span><span class="token operator">&lt;</span>function<span class="token operator">&gt;</span> <span class="token operator">&lt;</span>arguments<span class="token operator">&gt;</span><span class="token variable">)</span></span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<p>或是:</p> 
<pre data-index="41" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token variable">${&lt;function&gt; &lt;arguments&gt;}</span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<p>这里， 就是函数名，make支持的函数不多。 为函数的参数，参数间以逗号 , 分隔，而函数名和参数之间以“空格”分隔。函数调用以 $ 开头，以圆括号或花括号把函数名和参数括起。</p> 
<h3><a name="t28"></a><a id="1foreach__649"></a>1、foreach 函数</h3> 
<p>foreach 函数和别的函数非常的不一样。因为这个函数是用来做循环用的，Makefile 中的 foreach 函数几乎是仿照于 Unix 标准 Shell（/bin/sh）中的 for 语句，或是 C-Shell（/bin/csh）中的 foreach 语句而构建的。它的语法是：</p> 
<pre data-index="42" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token variable"><span class="token variable">$(</span>foreach <span class="token operator">&lt;</span>var<span class="token operator">&gt;</span>,<span class="token operator">&lt;</span>list<span class="token operator">&gt;</span>,<span class="token operator">&lt;</span>text<span class="token operator">&gt;</span><span class="token variable">)</span></span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<p>这个函数的意思是，把参数 &lt;list&gt; 中的单词逐一取出放到参数 &lt;var&gt; 所指定的变量中，然后再执行 &lt;text&gt; 所包含的表达式。每一次 &lt;text&gt; 会返回一个字符串，循环过程中， &lt;text&gt; 的所返回的每个字符串会以空格分隔，最后当整个循环结束时， &lt;text&gt; 所返回的每个字符串所组成的整个字符串（以空格分隔）将会是 foreach 函数的返回值。</p> 
<p>所以， &lt;var&gt; 最好是一个变量名， &lt;list&gt; 可以是一个表达式，而 &lt;text&gt; 中一般会使用 &lt;var&gt; 这个参数来依次枚举 &lt;list&gt; 中的单词。举个例子：<br> 如下 Makefile</p> 
<pre data-index="43" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">names :<span class="token operator">=</span> a b c d

files :<span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>foreach n,<span class="token punctuation">$(</span>names<span class="token punctuation">)</span>,<span class="token punctuation">$(</span>n<span class="token punctuation">)</span>.o<span class="token variable">)</span></span>

ALL:
	@echo <span class="token variable"><span class="token variable">$(</span>files<span class="token variable">)</span></span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li></ul></pre> 
<p>执行 make<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/fe8429705784f7abe0a37831118d1cc4.png" alt="在这里插入图片描述"><br> 上面的例子中， $(name) 中的单词会被挨个取出，并存到变量 n 中， $(n).o 每次根据 $(n) 计算出一个值，这些值以空格分隔，最后作为foreach函数的返回，所以， $(files) 的值是 a.o b.o c.o d.o 。</p> 
<p>注意，foreach中的 &lt;var&gt; 参数是一个临时的局部变量，foreach函数执行完后，参数 &lt;var&gt; 的变量将不在作用，其作用域只在 foreach 函数当中。</p> 
<h3><a name="t29"></a><a id="2filter__filterout__671"></a>2、filter 和 filter-out 函数</h3> 
<pre data-index="44" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token variable"><span class="token variable">$(</span>filter <span class="token operator">&lt;</span>pattern<span class="token punctuation">..</span>.<span class="token operator">&gt;</span>,<span class="token operator">&lt;</span>text<span class="token operator">&gt;</span><span class="token variable">)</span></span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<ul><li>名称：过滤函数</li><li>功能：以 &lt;pattern&gt; 模式过滤 &lt;text&gt; 字符串中的单词，保留符合模式 &lt;pattern&gt; 的单词。可以有多个模式。</li><li>返回：返回符合模式 &lt;pattern&gt; 的字串。</li></ul> 
<pre data-index="45" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token variable"><span class="token variable">$(</span>filter-out <span class="token operator">&lt;</span>pattern<span class="token punctuation">..</span>.<span class="token operator">&gt;</span>,<span class="token operator">&lt;</span>text<span class="token operator">&gt;</span><span class="token variable">)</span></span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<ul><li>名称：反过滤函数</li><li>功能：以 &lt;pattern&gt; 模式过滤 &lt;text&gt; 字符串中的单词，去除符合模式 &lt;pattern&gt; 的单词。可以有多个模式。</li><li>返回：返回不符合模式 &lt;pattern&gt; 的字串。</li></ul> 
<p>示例 Makefile 如下：</p> 
<pre data-index="46" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;">C <span class="token operator">=</span> a b b d/

D <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>filter %/, <span class="token punctuation">$(</span>C<span class="token punctuation">)</span><span class="token variable">)</span></span>
E <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>filter-out %/, <span class="token punctuation">$(</span>C<span class="token punctuation">)</span><span class="token variable">)</span></span>

ALL:
	@echo D <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>D<span class="token variable">)</span></span>
	@echo E <span class="token operator">=</span> <span class="token variable"><span class="token variable">$(</span>E<span class="token variable">)</span></span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li><li style="color: rgb(153, 153, 153);">2</li><li style="color: rgb(153, 153, 153);">3</li><li style="color: rgb(153, 153, 153);">4</li><li style="color: rgb(153, 153, 153);">5</li><li style="color: rgb(153, 153, 153);">6</li><li style="color: rgb(153, 153, 153);">7</li><li style="color: rgb(153, 153, 153);">8</li></ul></pre> 
<p>执行 make<br> <img src="https://i-blog.csdnimg.cn/blog_migrate/7b6d38ad5448e3ff9ee42fd91b9ea269.png" alt="在这里插入图片描述"></p> 
<h3><a name="t30"></a><a id="3patsubst_699"></a>3、patsubst</h3> 
<pre data-index="47" class="set-code-show prettyprint" name="code"><code class="prism language-bash has-numbering" onclick="mdcp.copyCode(event)" style="position: unset;"><span class="token variable"><span class="token variable">$(</span>patsubst <span class="token operator">&lt;</span>pattern<span class="token operator">&gt;</span>,<span class="token operator">&lt;</span>replacement<span class="token operator">&gt;</span>,<span class="token operator">&lt;</span>text<span class="token operator">&gt;</span><span class="token variable">)</span></span>
<div class="hljs-button {2}" data-title="复制"></div></code><ul class="pre-numbering" style=""><li style="color: rgb(153, 153, 153);">1</li></ul></pre> 
<ul><li>名称：模式字符串替换函数。</li><li>功能：查找 &lt;text&gt; 中的单词（单词以“空格”、“Tab”或“回车”“换行”分隔）是否符合模式 &lt;pattern&gt; ，如果匹配的话，则以 &lt;replacement&gt; 替换。这里， &lt;pattern&gt; 可以包括通配符 % ，表示任意长度的字串。如果 &lt;replacement&gt; 中也包含 % ，那么， &lt;replacement&gt; 中的这个 % 将是 &lt;pattern&gt; 中的那个 % 所代表的字串。（可以用 \ 来转义，以 % 来表示真实含义的 % 字符）</li><li>返回：函数返回被替换过后的字符串。</li><li>示例：<code>$(patsubst %.c,%.o,x.c.c bar.c)</code>，把字串 x.c.c bar.c 符合模式 %.c 的单词替换成 %.o ，返回结果是 x.c.o bar.o</li></ul> 
<hr> 
<p><mark>我的qq：2442391036，欢迎交流！</mark></p> 
<hr>
                </div>

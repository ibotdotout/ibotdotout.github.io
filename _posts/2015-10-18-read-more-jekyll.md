---
layout: post
title: Read more feature on jekyll
tags: [jekyll]
permalink: read-more-jekyll
# --- option ---
excerpt: Read more feature on jekyll that working with Github Pages
---

> Github Pages Tips:  
> Github Pages always complie jekyll with `--safe` option that will  
> disable plugins but some plugin can work with Github Pages.  
> [List of Jekyll Plguins that working on Github > Pages](https://help.github.com/articles/using-jekyll-plugins-with-github-pages/)  

> Easy ways: using [excerpt option of > jekyll](http://jekyllrb.com/docs/posts/#post-excerpts)  
> [Customized excerpt separator in > Jekyll](http://snippetrepo.com/snippets/customized-excerpt-separator-in-jekyll)  

Just using `truncate` they not checking html tag that make your site look
terrible and Github Pages not support custom ruby script that place in
`_plugins`. The better way is using split with custom tags.

Replace `{{ post.content }}` in `index.html` in jekyll directory with

```ruby
    {% raw %}
    {% if post.content contains "<!-- more -->" %}
      {{ post.content | split:"<!-- more -->" | first % }}
      <div style="text-align:right;">
        <a href="{{ post.url }}" style="color:#000;"> Read More </a>
      </div>
    {% else %}
      {{ post.content }}
    {% endif %}
    {% endraw %}
```

<!-- more -->

In your contents add `<!-- more -->`

```
---
layout: post
title: Read more feature on jekyll
tags: [jekyll]
---
Hello, world

<!-- more -->

You can't see this message via index.html
```


### References:
4. [Truncating blog posts in Jekyll](http://mikeygee.com/blog/truncate.html)
2. [Jekyll - Read More without plugin](https://truongtx.me/2013/05/01/jekyll-read-more-feature-without-any-plugin/)
1. [A Jekyll plugin that truncates HTML while preserving markup structure.](https://github.com/MattHall/truncatehtml)

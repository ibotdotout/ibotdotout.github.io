---
layout: post
title: How to set up this blog
permalink: how-to-setup-this-blog/
tags: [jekyll]
update_date: 2015-12-26
---

This blog created by [Jekyll](http://jekyllrb.com) that is ruby scripts to transforms plain text into static html website and blogs and hosted on [Github
Page](http://page.github.com) that free hosting support Jekyll.This blog use [Lanyon](http://lanyon.getpoole.com) theme that based on
[Poole](http://getpoole.com) a minimal style of Jekyll.

### Set up github page:  
  1. Follow setup guilde of [Github page](https://pages.github.com)
  for more information about jekyll on github look at  

    ```
    http://help.github.com/articles/using-jekyll-with-pages
    ```
  2. Clone project from [Lanyon](http://lanyon.getpoole.com)  

    ```
      git clone https://github.com/poole/lanyon.git
    ```  

  3. Configs jekyll in  `_config.yml`   

    ```yaml
      #setup
      title:            botbotbot  
      tagline:          "'s blog"  
      description:      "botbotbot's blog"  
      url:              http://ibotdotout.github.io  
      paginate:         5  
    ```

  4. Make tags.md in root directory copy code from

    ```
    https://github.com/LanyonM/lanyonm.github.io/blob/master/tags.html
    ```

  5. Let blog it.


### Add Feed in Jekyll
  1. [Jekyll Feed plugin - Recommend](https://github.com/jekyll/jekyll-feed)
  2. [Atom Feed in Jekyll](http://jekyll.tips/tutorials/atom-feed/)
  3. [RSS Feed in Jekyll](http://jekyll.tips/tutorials/rss-feed/)
  4. [RSS for Jekyll blogs](http://joelglovier.com/writing/rss-for-jekyll/)


### References:  
  1. [http://joshualande.com/jekyll-github-pages-poole/](http://joshualande.com/jekyll-github-pages-poole/)
  2. [Table not render when use Redcarpet in Jekyll GitHub Pages?](http://stackoverflow.com/questions/16099153/table-not-render-when-use-redcarpet-in-jekyll-github-pages)
  3. [Jekyll-Plugins](http://www.jekyll-plugins.com)
  4. [Jekyll Stater](http://jekyll.tips)
  5. [Adding Disqus Comment to your Jekyll](http://www.perfectlyrandom.org/2014/06/29/adding-disqus-to-your-jekyll-powered-github-pages/)

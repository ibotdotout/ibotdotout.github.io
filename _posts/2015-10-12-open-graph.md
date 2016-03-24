---
layout: post
title: Sharing with Open Graph
tags: [jekyll, website]
permalink: opengraph/
excerpt: Make your site look pretty when sharing on facebook.
thumbnail: /public/img/open-graph-thumbnail.png
---

![sharing with open graph]({{site.url}}/public/img/open-graph-thumbnail.png)

Add this meta data to your `html page` between `<head> ... </head>`

```html
 <meta property="og:title" content="Markdown Slide" />
 <meta property="og:type" content="article" />
 <meta property="og:url" content="http://dev.im-bot.com/slide/" />
 <meta property="og:image" content="http://dev.im-bot.com/public/opengraph_logo.png" />
 <meta property="og:description" content="Remark.js - easy and simple slide" />
 <meta property="og:site_name" content="botbotbot" />
 <meta property="og:locale" content="th_TH" />
```

Then using [Open Graph Object Debugger](https://developers.facebook.com/tools/debug/og/object/) to look what it look like when shared.

<!-- more -->

### Tips:
- `og:image` always cache in fb server. you should change your image url to force fb reload your image.


# Jekyll Integrate Open Graph

Add this line in your `_includes/head.html` between `<head> ... </head>`

```html
{% include opengraph.html %}
```

Create `_includes/opengraph.html`

```html
<meta property="og:title" content="{% if page.title %}{{ page.title }}{% else %}{{ site.title }}{% endif %}" />
<meta property="og:type" content="{% if page.title %}article{% else %}website{% endif %}" />
<meta property="og:url" content="{{ page.url | replace:'index.html','' | prepend: site.url | append: '/' }}" />
<meta property="og:image" content="{% if page.thumbnail %}{{ page.thumbnail | prepend: site.url }}{% else %}{{ site.logo | prepend: site.url }}{% endif %}" />
<meta property="og:description" content="{% if page.excerpt %}{{ page.excerpt | strip_html | strip_newlines | truncate: 160 }}{% else %}{{ site.description }}{% endif %}" />
<meta property="og:site_name" content="{{ site.title }}" />
<meta property="og:locale" content="{{ site.locale }}" />
```

Update `_config.yml`

```yaml
logo: /public/logo.png
locale: th_TH
```

Custom Post

```
----
excerpt: summary
thumbnail: /public/thumbnail_for_your_post.png
----
```

- [Adding Open Graph Tags to Jekyll](http://davidensinger.com/2013/04/adding-open-graph-tags-to-jekyll/)
- [Integrating Facebook Open Graph Meta Tags In Jekyll](http://danyalzia.com/2015/03/25/integrating-facebook-open-graph-in-jekyll/)
- [Integrating social meta tags into Jekyll](http://milanaryal.com/2015/integrating-social-meta-tags-into-jekyll/)

# References:
- [Facebook Share doesn't show my description or my thumbnail](http://stackoverflow.com/questions/2950189/facebook-share-doesnt-show-my-description-or-my-thumbnail)
- [The Open Graph protocol](http://ogp.me)
- [Sharing Best Practices for Websites & Mobile Apps](https://developers.facebook.com/docs/sharing/best-practices)
- [Open Graph Object Debugger](https://developers.facebook.com/tools/debug/og/object/)

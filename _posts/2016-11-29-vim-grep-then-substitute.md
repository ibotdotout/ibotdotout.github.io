---
layout: post
title: Vim Grep then Substitute
tags: [vim]
permalink: vim-grep-then-substitute/
# --- option ---
update_date: 2016-11-29
# thumbnail: img_url (local ulr)
# category: article
# excerpt: summary
---

Ed/Ex is text editor, old text editor on that day didn't have WYSIWYG text editor,
You need to use `ed syntax` to edit your text file.
If you know `sed`, It is stream ed.

Vim is based on `ed`, Example substitue synax `:s/old/new` is come form `ed syntax`.
You should learn `ed` to empower your vim skill.

<!-- more -->

```
# Input
var path = require('path');
var mongo = require('mongo');
var express = require('express');

var x = 2;
var y = 3;
var z = 4;
```

want to change `var` to `const` only in line that contain `require`

find line that `has` < contain word > then replace < word > to < new  word > on that line

```
:g/< contain word >/s/< word >/ < new word >/g
```

```
# vim command
:g/require/s/var/const/g

# Output
const path = require('path');
const mongo = require('mongo');
const express = require('express');

var x = 2;
var y = 3;
var z = 4;
```

find line that `not has` < contain word > then replace < word > to < new  word > on that line

```
:v/< contain word >/s/< word >/ < new word >/g
```

```
# Vim command
:v/require/s/var/let/g

# Output
var path = require('path');
var mongo = require('mongo');
var express = require('express');

let x = 2;
let y = 3;
let z = 4;
```

### References
* [Your problem with Vim is that you don't grok vi.](http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118)
* [Vim 101: ed and ex](http://usevim.com/2012/09/28/vim101-history/)
* [Actually using ed](https://sanctum.geek.nz/arabesque/actually-using-ed/)

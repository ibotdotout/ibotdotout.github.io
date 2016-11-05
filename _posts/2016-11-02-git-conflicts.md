---
layout: post
title: Git conflicts
tags: [git, vim]
permalink: git-conflicts/
# --- option ---
update_date: 2016-11-02
#thumbnail: img_url (local ulr)
#category: article
#excerpt: summary
---

### Git

* [Resolve Git merge conflicts in favor of their changes during a pull](http://stackoverflow.com/a/33569970/6144391)

  ```
  # In conflicted state
  $ git checkout --theirs . // use thier code from remote repo
  $ git checkout --ours . // use our code form local repo
  $ git add -u . // add file with skip iles that are not under version control
  ```

<!-- more -->

### Vim

* [fugitive.vim: a Git wrapper so awesome](https://github.com/tpope/vim-fugitive)
* [Fugitive.vim - resolving merge conflicts with vimdiff](http://vimcasts.org/episodes/fugitive-vim-resolving-merge-conflicts-with-vimdiff)

  ```
  :Gvdiff
  :buffers
  # focus on middle window
  :diffput 2 // see number on :buffers
  :diffput 3 // see number on :buffers
  # ]c next conflict
  # [c previos conflict
  ```

---
layout: post
title: Avoid git commit -m
tags: [git]
permalink: avoid-git-commit-m
---

Most of Git tutorial even [Try Git](http://try.github.io) guide you
about git commit with this

```sh
$ git commit -m "hello world"
```

That's OK.
But It better to use any option without -m.

<!-- more -->

```sh
$ git commit
$ git commit -a
$ git commit --amend
```

Without -m, Git will popup your editor to write the commit message like
this

![git-commit-vim]({{url}}/public/img/git-commit-vim.png)

It's more powerful than -m option that limit your commit message to
one line, without -m you can write commit message with many line.

It also let your know when the first line exceed 50 characters that
is best practice to write commit message.

It provide a list of files which involve in the commit that
give your a chance to revise.

If you are Vim fanboy, you should look at
[fugitive.vim](https://github.com/tpope/vim-fugitive)
the best Git wrapper that make Vim more powerful with Git,
your can watch screencast with fugitive.vim in [The Fugitive Series - a
retrospective](http://vimcasts.org/blog/2011/05/the-fugitive-series/).

### How to write better commit message:
* [การเขียน Git Commit Message](http://thaiprogrammer.org/การเขียน-git-commit-message/)
* [5 Useful Tips For A Better Commit Message](https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message)
* [Developer Tip: Keep Your Commits “Atomic”](http://www.freshconsulting.com/atomic-commits/)
* [How to Write a Git Commit Message](http://chris.beams.io/posts/git-commit/)
* [Better Commit Messages with a .gitmessage Template](https://robots.thoughtbot.com/better-commit-messages-with-a-gitmessage-template)

### Set your git editor
* [How do I make git use the editor of my choice for commits?](http://stackoverflow.com/a/2596835)

---
layout: post
title: Git Bisect
tags: [git]
permalink: git-bisect/
# --- option ---
update_date: 2016-06-15
category: article
---
Git Bisect is useful for debugging something is work is past but not now (Regression).

<!-- more -->

The better way to debug regression is find first commit that make error happen to reduce scope of the cause.
Instead of search each one by one commit that is linear search, you can apply binary search to help you find the commit that is cause of bug.
binay search will reduce the number of commits to  `log n + 1` that is worst case of it.
`git bisect` is the command that apply this concept you dont have to do it with your own.

# Demo & Use case of Git Bisect
[ibotdotout/demo-git-bisect](https://github.com/ibotdotout/demo-git-bisect)

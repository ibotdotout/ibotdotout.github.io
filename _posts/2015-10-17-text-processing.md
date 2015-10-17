---
layout: post
title: Text Processing in Shell
tags: [unix]
permalink: text-processing
excerpt: Collection example of text processing in shell
---

> Most of example come from problem in [Linux Shell - Hackerrank](https://www.hackerrank.com/domains/shell/bash)

## Sed

> Trip:
> `sed` in OSX may not working as example. You should try `gsed`.
> `gsed` can install via brew and call `gsed` instead of `sed`

```sh
$ cat in
1234 5678 9101 1234  
2999 5178 9101 2234
$ sed -re 's/([0-9]{4}\s){3}/**** **** **** /' in
**** **** **** 1234
**** **** **** 2234
```

<!-- more -->

```sh
$ cat in
1234 5678 9101 1234
2999 5178 9101 2234
$ sed -r 's/([0-9]{4}\s?)([0-9]{4}\s?)([0-9]{4}\s?)([0-9]{4})/\4
\3\2\1/' in
1234 9101 5678 1234
2234 9101 5178 2999
```


```sh
$ cat in
hello cat meow meow Cat Cat caT love cAt
$ sed -e 's/cat/{\0}/gi' in
hello {cat meow meow Cat Cat caT love cAt
```

```sh
$ cat in
hello cat meow meow Cat Cat caT love cAt
$ sed -e 's/cat/dog/gi' in
hello dog meow meow dog dog dog love dog
```


Reference:
- [Sed - An Introduction and Tutorial by Bruce Barnett](http://www.grymoire.com/Unix/Sed.html)
- [Advanced Bash-Scripting Guide: Sed](http://tldp.org/LDP/abs/html/x23170.html)
- [Sed Command in Unix and Linux Examples](http://www.folkstalk.com/2012/01/sed-command-in-unix-examples.html)
- [Unix Sed Tutorial: Advanced Sed Substitution
Examples](http://www.thegeekstuff.com/2009/10/unix-sed-tutorial-advanced-sed-substitution-examples/)
- [regular expression in sed for masking credit
card](http://stackoverflow.com/questions/2232200/regular-expression-in-sed-for-masking-credit-card)

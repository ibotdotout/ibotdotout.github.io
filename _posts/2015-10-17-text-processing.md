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
hello {cat} meow meow {Cat} {Cat} {caT} love {cAt}
```

```sh
$ cat in
hello cat meow meow Cat Cat caT love cAt
$ sed -e 's/cat/dog/gi' in
hello dog meow meow dog dog dog love dog
```


### Reference:  
1. [Sed - An Introduction and Tutorial by Bruce Barnett](http://www.grymoire.com/Unix/Sed.html)  
1. [Advanced Bash-Scripting Guide: Sed](http://tldp.org/LDP/abs/html/x23170.html)  
1. [Sed Command in Unix and Linux Examples](http://www.folkstalk.com/2012/01/sed-command-in-unix-examples.html)  
1. [Unix Sed Tutorial: Advanced Sed Substitution Examples](http://www.thegeekstuff.com/2009/10/unix-sed-tutorial-advanced-sed-substitution-examples/)  
1. [regular expression in sed for masking credit card](http://stackoverflow.com/questions/2232200/regular-expression-in-sed-for-masking-credit-card)  
1. [sed, a stream editor](https://www.gnu.org/software/sed/manual/sed.html)  
1. [The Basics of Using the Sed Stream Editor to Manipulate Text in Linux](https://www.digitalocean.com/community/tutorials/the-basics-of-using-the-sed-stream-editor-to-manipulate-text-in-linux)
2. [Intermediate Sed: Manipulating Streams of Text in a Linux Environment](https://www.digitalocean.com/community/articles/intermediate-sed-manipulating-streams-of-text-in-a-linux-environment)
3. [Unix - Regular Expressions with SED](http://www.tutorialspoint.com/unix/unix-regular-expressions.htm)
4. [Unix Sed Tutorial: Append, Insert, Replace, and Count File Lines](http://www.thegeekstuff.com/2009/11/unix-sed-tutorial-append-insert-replace-and-count-file-lines/)
5. [Add Character to the Beginning or to the End of Each Line using AWK and SED](http://www.shellhacks.com/en/Add-Character-to-the-Beginning-or-to-the-End-of-Each-Line-using-AWK-and-SED)
6. [sed, a stream editor](https://www.gnu.org/software/sed/manual/sed.html)
7. [Sed & Awk Book](http://docstore.mik.ua/orelly/unix/sedawk/index.htm)

## Awk

```sh
$ cat in
A 25 27 50  
B 35 75  
C 75 78  
D 99 88 76  
$ awk '{ if ($4 =="") print "Not all scores are available for",$1; }'
Not all scores are available for B
Not all scores are available for C
```

### Reference:  
8. [Awk in 20 Minutes](http://ferd.ca/awk-in-20-minutes.html)
1. [Awk Introduction Tutorial – 7 Awk Print Examples](http://www.thegeekstuff.com/2010/01/awk-introduction-tutorial-7-awk-print-examples/)
2. [4 Awk If Statement Examples ( if, if else, if else if, :?)](http://www.thegeekstuff.com/2010/02/awk-conditional-statements/)

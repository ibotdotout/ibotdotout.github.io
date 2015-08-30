---
layout: post
title: Robot Packtpub
tags: robot-framework
permalink: robot-packtpub
---

Automate claim [free ebook from packtpub](https://www.packtpub.com/packt/offers/free-learning) to your packtpub account by robotframework script.

## Robot Script
{% gist 9a567b2c2f90df2d59c5 %}

## Package Requirements or [Dockerfile on Robot-packtpub Repo](https://github.com/ibotdotout/robot-packtpub)

```sh
# should work on debian/ubuntu
$ apt-get -y update
$ apt-get -y install python-dev python-pip
$ apt-get -y install xvfb firefox

$ pip install robotframework
$ pip install robotframework-selenium2library
$ pip install robotframework-xvfb
```

## How to use

```sh
# Edit {USER} and {PASSWORD} first !!!
$ pybot robot-packtpub.txt
```

## Note
- We use XPath to locate where button and input form are that not flexible,
  It may change when Web UI changed (XPath is Best Solution that I found).
  You can find XPath by following this video - [Quick Tip: Getting The XPath In Google Chrome](https://www.youtube.com/watch?v=vCNLPHP3E_U).

- We use Xvfb Firefox for headless browser instead of PhantomJS that have some problem on docker in this case.

- You can use [Travis-CI](https://travis-ci.org) and [Nightly Builds](https://nightli.es) to run your script everyday.

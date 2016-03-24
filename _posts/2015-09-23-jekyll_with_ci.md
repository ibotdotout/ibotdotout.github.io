---
layout: post
title: Jekyll with Continuous Integration
permalink: jekyll-with-ci
tags: [jekyll]
---

## .travis.yml

{% gist 96c3b980cdecef2c7ee4 %}

## Tips:

- Jekyll + Travis with Docker not work well - [Error:  Permission denied](https://travis-ci.org/ibotdotout/ibotdotout.github.io/builds/81637869)

Travis support docker but not fully permission some dependencies that
try to use OS command ex. kill can make your test error or failed.

- htmlproofer external

link that not start with http will be claim as internal link


## References:
1. [Jekyll with Continuous Integration](https://jekyllrb.com/docs/continuous-integration/)
2. [Test your Jekyll blog with Travis CI](http://www.jacobtomlinson.co.uk/jekyll/2015/02/18/test-you-jekyll-blog-with-travis-ci/)
3. [Simple Docker Container for Jekyll Work](https://hub.docker.com/r/grahamc/jekyll/)
4. [Automatic merge branch into master on sucessful build in
travis](http://stackoverflow.com/questions/28788109/automatic-merge-branch-into-master-on-sucessful-build-in-travis)
5. [TravisCI Custom Deployment](http://docs.travis-ci.com/user/deployment/custom/)

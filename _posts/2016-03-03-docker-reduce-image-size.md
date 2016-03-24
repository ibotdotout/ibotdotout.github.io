---
layout: post
title: Reduce docker image size
tags: [docker]
permalink: docker-reduce-image-size
update_date: 2016-03-03
---

Reduce Docker image size can help your to portable your contain
across network, save bandwidth and storage, faster to scale.

## 1. Using [alpine](https://hub.docker.com/_/alpine/) base image when possible
It is minimal Docker image based on Alpine Linux that only 5 MB.
You can install packages with `apk add --update <pakckages>` and
you can check packages that avaible on [alpine packages](https://pkgs.alpinelinux.org/packages).

### Debian/Ubuntu vs Alpine
* [Nginx based on debian](https://hub.docker.com/_/nginx/) 135 MB vs 13 MB [alpine-nginx](https://hub.docker.com/r/smebberson/alpine-nginx/)
* [Node based on debian](https://hub.docker.com/_/node/) 644 MB vs 36.76 MB [alpine-node](https://hub.docker.com/r/mhart/alpine-node/)

You can see how small alpine based image are.
However alpine based is new born linux that not contain much packages as
older linux like debian/ubuntu. There are some compiled packages and
some that your have to compile with your own.

<!-- more -->

## 2. Using `apt-get` with `--no-install-recommends` option on Debian/Ubuntu Image

with this option, [Marc Campbell](http://blog.replicated.com/2016/02/05/refactoring-a-dockerfile-for-image-size/) can drop ~120MB for `python-pip` and `curl` packages
and I can save ~700MB by using this technique and combine commands on
[docker-predictionio](https://github.com/ibotdotout/docker-predictionio/blob/master/Dockerfile)
that based on [sphereio/docker-predictionio](https://github.com/sphereie/docker-predictionio/blob/master/Dockerfile).

```
RUN apt-get install -y --no-install-recommends <packages>
```

## 3. Combine commands to reduce layers

Example your `Dockfile` look like

```
RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install predictionio
```

should combile commands like this

```
RUN apt-get update \
    && apt-get install -y python-pip \
    && pip install predictionio
```

that reduce image layer and image size.
However your should do this when your sure with `Dockerfile`
becuase `docker build` will cache a huge layer, you need to rebuild all
commands if your edit any single one.


## 4. Remove unecessary packages/files

Remove some no longer need packages ex. `python-pip` `curl` Any SDK
and compressed file that your extracted when you finish your
installation.

> Must remove in same layer, remove in another layer not help to reduce
> image size.

```
RUN apt-get install -y python-pip pyhton-dev \
    && pip install predictionio \
    && apt-get remove -y python-pip \
    && ap-get clean \
    && rm -rf /var/lib/apt/lists/*
```

### 5. Using [docker-squash](https://github.com/jwilder/docker-squash) to make them smaller

   > I not sure about this solution that I can't complie it on OSX.
   > You can read more about `docker-squash` in References.


### References::
* [Alpine Linux - A minimal Docker image based](https://hub.docker.com/_/alpine/)
* [Refactoring a Dockerfile for image size](http://blog.replicated.com/2016/02/05/refactoring-a-dockerfile-for-image-size/)
* [Building Good Docker Images](http://jonathan.bergknoff.com/journal/building-good-docker-images)
* [Docker: 4 useful tips, you may not know about](http://layer0.authentise.com/docker-4-useful-tips-you-may-not-know-about.html)
* [docker-squash](https://github.com/jwilder/docker-squash)
* [Squashing Docker Images](http://jasonwilder.com/blog/2014/08/19/squashing-docker-images/)
* [Reducing the size of Docker Images](http://woudenberg.io/reducing-docker-image-size/)

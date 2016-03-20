---
layout: post
title: Crontab on Docker
tags: [docker]
permalink: docker-cron
# --- option ---
update_date: 2016-03-04
---

You can start `crontab` following [Run a cron job with Docker](https://www.ekito.fr/people/run-a-cron-job-with-docker/)
just put `crontab` in `/etc/cron.d/` and run `cron` for making it working.

<!-- more -->

However when you try something that complex than `echo "hello world"` sometimes it just not working and you don't know why!!!
You had alreay tried to run your script that working on your linux but no idea why not working on your docker.

[rozkosz](http://stackoverflow.com/a/26958348) said:

     Several issues that I faced while trying to get a cron job running in a docker container were:
     1. time in the docker container is in UTC not local time;
     2. the docker environment is not passed to cron;
     3. as Thomas noted, cron logging leaves a lot to be desired and accessing it through docker requires a docker-based solution.


I think the problem that most people face is `cron` not run your script with same environment as your docker in terminal.
You need to export your Docker environment to your `cron` that I found solution from [postgres-s3-backup Dockerfile](https://hub.docker.com/r/draffensperger/postgres-s3-backup/~/dockerfile/).
You can following this for simple solution:


1. In `Dockerfile`, export Docker environment to /root/env.txt

  ```sh
  CMD env > /root/env.txt && cron && your_init_script
  ```

2. In your `crontab` file, You need to to import your Docker environment before run your script

  ```sh
  */5 * * * *  root env - `cat /root/env.txt`  your_scipt  >> /var/log/cron.log 2>&1
  # An empty line is required at the end of this file for a valid cron file.
  ```

3. Test it. Your should put `date` in your script for debug and then `cat /var/log/cron.log` to see your results.

For the local timezone problem your can setup your Dockerfile following this

* Debian/Linux Setting timezone

     ```sh
     # Set the time zone to the local time zone
     RUN echo "Asia/Bangkok" > /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata
     ```
* [Alpine Setting the timezone](http://wiki.alpinelinux.org/wiki/Setting_the_timezone)

    ```sh
    # Alpine Linux
    # set bangkok time
    USEo root
    RUN apk add --update tzdata \
    && cp /usr/share/zoneinfo/Asia/Bangkok /etc/localtime \
    && echo "Asia/Bangkok" >  /etc/timezone \
    && apk del tzdata \
    && mv /etc/localtime /usr/share/zoneinfo/Asia/Bangkok

    # or
    USER root
    RUN apk add --update tzdata
    ENV TZ=Asia/Bangkok
    ```

* [Will docker container auto sync time with the host machine?](http://stackoverflow.com/a/25130291)

    ```sh
    $ docker run -it -v /etc/localtime:/etc/localtime:ro < image >
    ```

### References:
* [Running cron python jobs within docker](http://stackoverflow.com/questions/26822067/running-cron-python-jobs-within-docker/26958348#26958348)

* [Run a cron job with Docker](https://www.ekito.fr/people/run-a-cron-job-with-docker/)

* [Running cron python jobs within docker](http://stackoverflow.com/a/26958348)

* [docker-cron-example](https://github.com/Alexis-benoist/docker-cron-example)

* [Example implementation of cron jobs on Docker/Aptible](https://github.com/aptible/docker-cron-example)

* [Example of Cron](https://hub.docker.com/r/draffensperger/postgres-s3-backup/~/dockerfile/)

* [PATH in crontab](http://serverfault.com/a/84545)

---
layout: post
title: Google Compute Engine
tags: cloud
permalink: compute-engine
---

## Nginx ByPass Confixguration

bypass.conf

```sh
server {
    listen 80;

    location / {
        proxy_pass http://127.0.0.1:8000;
    }
}
```

```sh
# debian
$ sudo apt-get install nginx
$ sudo vim /etc/nginx/sites-available/<your>.conf
$ sudo rm /etc/ngin/sites-enabled/default.conf
$ suo ln -f /etc/nginx/sites-available/<your>.conf /etc/sites-enabled/
$ sudo services nginx reload
```

## Install locals to support many languages

```sh
# debian
$ sudo apt-get install locales
$ sudo dpkg-reconfigure locales
```

## Using Lastest Package on Debian

```sh
$ sudo vim /etc/apt/sources.list
# add "deb     http://http.debian.net/debian testing         main"
$ sudo apt-get update
$ sudo apt-get install <your package>
# don't call sudo apt-get upgrade if your don't want to upgrade your all system to lastest packages
```

## [Open Port On Google Compute Engine](http://stackoverflow.com/questions/21065922/how-to-open-a-specific-port-such-as-9090-in-google-compute-engine)

1. Go to cloud.google.com
2. Go to my Console
3. Choose you Project.
4. Choose "Compute Engine"
5. Choose "Networks"
6. Choose the interface for you Instances.
7. In firewalls section, Go to Create New.
8. Create your rule, in this case "Protocols & Ports" would be "tcp:9090" i guess.
9. Save.


## [Attach Disk](https://developers.google.com/compute/docs/disks#attachdiskcreation)

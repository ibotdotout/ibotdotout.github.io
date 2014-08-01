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

## Nginx Allow File browser list

```sh
# debain
$ cd /usr/share/nginx/html
$ ln -s <path> <link_name>
```

edit your nginx.conf

```sh
    location /<url> {
      alias /usr/share/nginx/html/<link_name>
      autoindex on;
      autoindex_exact_size off;
      autoindex_localtime on;
      auth_basic "Restricted";                #For Basic Auth
      auth_basic_user_file <your .htpasswd>;  #For Basic Auth
    }
```

### Ref::
1. [How to enable file browser mode in Nginx?](http://techglimpse.com/enable-directory-listing-mode-nginx/)
2. [How To Set Up HTTP Authentication With Nginx On Ubuntu 12.10](https://www.digitalocean.com/community/tutorials/how-to-set-up-http-authentication-with-nginx-on-ubuntu-12-10)


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

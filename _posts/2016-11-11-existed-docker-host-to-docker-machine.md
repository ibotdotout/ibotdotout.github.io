---
layout: post
title: Add existed Docker host to docker-machine
tags: [docker]
permalink: existed-docker-host-tot-docker-machine/
# --- option ---
update_date: 2016-11-11
# thumbnail: img_url (local ulr)
# category: article
# excerpt: summary
---

## [Generic Driver](https://docs.docker.com/machine/drivers/generic/) - Create machines using an existing VM/Host with SSH

```sh
$ docker-machine create --driver generic \
    --generic-ip-address $host_ip \
    --generic-ssh-user $host_user \
    $machine_name
```

<!-- more -->

## [How to mount local volumes in docker machine](http://stackoverflow.com/questions/30040708/how-to-mount-local-volumes-in-docker-machine)

* you can't mount local voumes to `remote server` but you can upload your files
  with `scp` or `rsync`

* `docker-compose` will mount file with the same path in both `client` and `remote
server`, you can check you path `$ pwd` .

* [docker-machine scp](https://docs.docker.com/machine/reference/scp/)

```sh
# download
$ docker-machine scp $machine:$src $dest

# upload
$ docker-machine scp $src $machine:$dest
```


* [docker-rsync](https://github.com/synack/docker-rsync)

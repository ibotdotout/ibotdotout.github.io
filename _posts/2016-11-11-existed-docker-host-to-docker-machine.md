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

* you can't mount local volumes to `remote server` but you can upload your files
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

* [Rsync](http://www.computerhope.com/unix/rsync.htm) - [option](http://ss64.com/bash/rsync_options.html)

```sh
# sync and delete file remote that not existed on local
rsync -rvzahe 'docker-machine ssh $machine' --delete --progress $src :$dest

# ignore .git directory
rsync -rvzahe 'docker-machine ssh $machine' --delete --progress --exclude='.git' $src :$dest"
```

```sh
# alias

export machine=digitalocean
# rsync for mount volume on remote docker host

# sync
alias dsync="rsync -rvzahe 'docker-machine ssh \$machine' --delete --progress --exclude='.git' . :\$PWD"

# remove file on server !!! danger
alias dclean="docker-machine ssh \$machine \"cd \$PWD && rm -r *\""

# need confirm before delete
alias dclean="echo \"cd $PWD && rm -r *\" | xargs -p docker-machine ssh \$machine"

# list dir on remote host
alias dlist="docker-machine ssh \$machine \"cd \$PWD && ls\""
```

## References:
* [Passing variables in remote ssh command](http://stackoverflow.com/questions/3314660/passing-variables-in-remote-ssh-command/3314678#3314678)
* [In Bash, how to add Are you sure Y/n? to any command or alias?](http://stackoverflow.com/questions/3231804/in-bash-how-to-add-are-you-sure-y-n-to-any-command-or-alias/3400809#3400809)


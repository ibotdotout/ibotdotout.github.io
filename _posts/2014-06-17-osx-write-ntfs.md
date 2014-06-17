---
layout: post
title: Enable NTFS write on OSX
tags: osx
---

## Automatical Way
  ```
  http://coolestguidesontheplanet.com/how-to-write-to-a-ntfs-drive-from-os-x-mavericks/
  ```

## Manual Way
1. get UUID form this command  

  ```sh
  diskutil info /Volumes/<drivename> |  grep UUID
  ```
2. edit /etc/fstab  

  ```sh
  sudo vim /etc/fstab
  ```
3. add this with edit ```<uuid_drive>```

  ```sh
  UUID=<uuid_drive> none ntfs rw,auto,nobrowse
  ```
4. reject and plug it agian  
5. open hdd with this command  

  ```sh
  open /Volumes
  ```
6. If want to remove writable NTFS drive 

  ```sh
  sudo rm /etc/fstab
  ```

### Reference:
1. [http://coolestguidesontheplanet.com/how-to-write-to-a-ntfs-drive-from-os-x-mavericks/](http://coolestguidesontheplanet.com/how-to-write-to-a-ntfs-drive-from-os-x-mavericks/)
2. [http://learnaholic.me/2013/11/11/enable-ntfs-write-on-mac-os-x-mavericks/](http://learnaholic.me/2013/11/11/enable-ntfs-write-on-mac-os-x-mavericks/)

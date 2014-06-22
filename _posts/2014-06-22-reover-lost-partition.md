---
layout: post
title: Recover lost partition
tags: testdisk
---

## Recover lost partition
I used [TestDisk](http://www.cgsecurity.org/wiki/TestDisk) to recover my lost NTFS partition that I formatted by accidently. You can use TestDisk by follow [TestDisk Step by Step](http://www.cgsecurity.org/wiki/TestDisk_Step_By_Step). After recovered I can see my NTFS partition that was formatted but can not access it.

## Repair damaged partition
I got my lost partition back but can't access it. So I use 'chkdsk /r' command on Windows to repiar damaged partition. Finally after 12 hours, I can got lost partition back and accessible it normally.

  ```sh
  chkdsk /r <drive>
  ```

---
layout: post
title: Vim Command
tags: vim
permalink: vim-command
---

### Range
|\[range\]|Description|
|-------|-----------|
|0 | above first line  |
|1 | first line  |
|. | mean to current line  |
|% | all lines  |
|$ | last line  |
|{start},{end} | from start to end line  |
|\<,\> | start selection to end selection  |

### Insert
|Command|Description|
|-------|-----------|
|:\[range\]print , :p | print line  |
|:\[range\]copy{target} , :t | copy line & paste  |
|:\[range\]normal {vimkey} | action vim key via command  |
||ex. :%normal A; - put ';' in end line for each line  |
|:!\<shell command\> | run shell command in vim  % mean to current file  |
|:r\<file\> ,:r !\<shell cmd\> | retrieving file after current cursor|

### Editor
|Command|Description|
|-------|-----------|
|:e\<file\> | edit/new file|
|:new\<file\> | new file|
|:vnew\<file\> | new file in vertical|
|:w !sudo tee % | [write file with sudo premission](https://www.youtube.com/watch?v=C6xqO4Z1nIo)|

### Number
|Command|Description|
|-------|-----------|
|:set relativenumber | enable relative number  |
|:set norelativenumber | disable relative number  |

### [Key Mapping](http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1))

|Command|Description|
|-------|-----------|
|:map, :map!|show mapping key|
|:verbose map \<key\> | show mapping key and where it mapping|

### ETC
|Command|Description|
|-------|-----------|
|:\[range\]move{target} , :m | move line  |
|:nohlsearch , :nohls | mute highlight search  |
|:\<stg\>C-d\<\tab\> | command line completion|
|:redraw | redraw screen (Ctrl + L)|
|:messages | show history of messages |

## References:
1. [How can I view old status messages in Vim?](http://superuser.com/a/547176)
2. [Make echo seen when it would otherwise disappear and go unseen](http://vim.wikia.com/wiki/Make_echo_seen_when_it_would_otherwise_disappear_and_go_unseen)

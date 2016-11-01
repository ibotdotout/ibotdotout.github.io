---
layout: post
title: Vim Change Multiple files
tags: [vim]
permalink: vim-change-multiple-files/
# --- option ---
update_date: 2016-11-01
# thumbnail: img_url (local ulr)
# category: article
# excerpt: summary
---


* First Way, load files to buffer and run command for each buffers

	```
	// search keyword on files and load files to buffers
	:args `rg -l pattern path/`

	// list buffers
	:buffers

	// substitute word for each buffers and save
	:argdo %s/pattern/newpattern/ge | update
	```

<!-- more -->

* Second Way (Easier), Using Ack.vim to search and list files in Quickfix on
   Vim and run command for each line on Quickfix

	```
	//  run the given command to each line of the quickfix list.
	:Ack! pattern 
	:cdo %s/pattern/newpattern/ge | w
	```

### Helper Tools & Plugins

* [Ack.vim](https://github.com/mileszs/ack.vim)
* [ripgrep is faster than {grep, ag, git grep, ucg, pt, sift}](http://blog.burntsushi.net/ripgrep/)
* [ripgrep (rg)](https://github.com/BurntSushi/ripgrep) 
* [Using ripgrep With Vim](http://www.wezm.net/technical/2016/09/ripgrep-with-vim/)

### References:

* [cdo - How to do search & replace with ack in vim?](http://stackoverflow.com/a/39119158)
* [Project-wide find and replace](http://vimcasts.org/episodes/project-wide-find-and-replace/)
* [argdo - How to do search & replace with ack in vim?](http://stackoverflow.com/a/15729568)
* [Vim 101: Search and Replace on Multiple Files](http://usevim.com/2012/04/06/search-and-replace-files/)
* [Vimcast - Using :argdo to change multiple files](http://vimcasts.org/episodes/using-argdo-to-change-multiple-files/)

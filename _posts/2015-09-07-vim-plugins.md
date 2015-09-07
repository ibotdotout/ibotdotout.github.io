---
layout: post
title: Vim Plugins
tags: vim
permalink: vim-plugins
---

# Plug-in - [More](http://vimawesome.com):
1. [surround](https://github.com/tpope/vim-surround)
2. [Easymotion](https://github.com/Lokaltog/vim-easymotion) - [EasyMotion Doc](https://github.com/Lokaltog/vim-easymotion/blob/master/doc/easymotion.txt#L88)
3. ctags
4. [GoldenView.Vim](https://github.com/zhaocai/GoldenView.Vim)
5. [Ag.vim](https://github.com/rking/ag.vim)
6. [sneak.vim](https://github.com/justinmk/vim-sneak) - [Doc](https://github.com/justinmk/vim-sneak/blob/master/doc/sneak.txt)

### [Janus](https://github.com/carlhuda/janus)

```sh
# update vim version to support all plugin in janus
$ brew install vim
```

|Keys|Description|
|-------|-----------|
|\<leader\>hs | toggle highlight search  |
|\<leader\>n | toggle [NERDTree](https://github.com/scrooloose/nerdtree)  |
|\<leader\>ci , \<leader>/ | toogle comment # [NERDCommenter](http://github.com/ddollar/nerdcommenter)  |
|\<leader\>\<leader\>w | easy motion w # [EasyMotion](https://github.com/Lokaltog/vim-easymotion)  |
|v{motion}S{tag} | Visual Select then surround it with tag #[surround](https://github.com/tpope/vim-surroun)|
|cs{old}{new} | change old surround to new surround #[surround](https://github.com/tpope/vim-surroun)|
|ds{tag} | delete tag surround #[surround](https://github.com/tpope/vim-surroun)|

### NERDTree - [Ref](http://gistpages.com/2013/08/17/vim_create_a_file_or_folder_in_nerdtree)
r in NERDTree - update tree
m->a in NERDTree - create file/folder

### Ctrlp
F5 in ctrlp - update ctrlp

### Ctags

```sh
$ brew install ctags
$ ctags -R # generate tags
```

|Keys|Description|
|-------|-----------|
|\<C-\]\> | jump to tag  |
|\<C-t\> | back to original  |

## Reference:
4. [Vim Essential Plugins](http://code.tutsplus.com/series/vim-essential-plugins--net-19224)
9. [vim.rc & vim plugin (video th)](https://www.youtube.com/watch?v=k_KSeQgtrb4)
8. [Vim and Ctags](http://andrew.stwrt.ca/posts/vim-ctags)

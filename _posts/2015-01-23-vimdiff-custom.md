---
layout: post
title: "Vimdiff Custom"
tags: vim
permalink: vimdiff
---

vimdiff custom

```python
# my_diff.py
#!/usr/bin/env python


def diff(file1, file2):

    def get_buffer(a, b):
        res = ""
        for i in a:
            res += i
        res += '---\n'
        for i in b:
            res += i
        return res

    def get_action(start, end):
        res = ""
        if start == end:
            res += "{0}c{0}\n".format(start)
        else:
            res += "{0},{1}c{0},{1}\n".format(start, end)
        return res

    buffer_a, buffer_b = [], []
    res = ""

    with open(file1, 'r') as a, open(file2, 'r') as b:

        a = a.readlines()
        b = b.readlines()

        start, curr, end = 1, 1, 1
        for x, y in zip(a, b):
            if x == y:
                if buffer_a:
                    res += get_action(start, end)
                    res += get_buffer(buffer_a, buffer_b)
                    buffer_a, buffer_b = [], []
                start = curr + 1
            else:
                end = curr
                buffer_a.append('< ' + x)
                buffer_b.append('> ' + y)
            curr += 1

        res += get_action(start, end)
        res += get_buffer(buffer_a, buffer_b)
        buffer_a, buffer_b = [], []
        print res,


if __name__ == '__main__':
    import sys
    diff(sys.argv[1], sys.argv[2])
```

```sh
".vimrc
set diffexpr=MyDiff()
function MyDiff()
    silent execute "!python <your_paht>/my_diff.py " . v:fname_in . " " . v:fname_new . " > " . v:fname_out
endfunction
```

Ref:
1.[use-smarter-algorithm-for-vimdiff-such-as-patience-or-histogram](http://takaaki-kasai-tech.blogspot.com/2014/07/use-smarter-algorithm-for-vimdiff-such-as-patience-or-histogram.html)  
2.[Use patience diff algorithm for vimdiff #1466](https://github.com/neovim/neovim/issues/1466)  
3.[Vim documentation: diff](http://vimdoc.sourceforge.net/htmldoc/diff.html#diff-options)  

---
layout: post
title: Vimdiff Custom
tags: vim
permalink: vimdiff/
---

### You need to convent result of unix diff to ed style to use in vimdiff.

### Example::

a.txt

```sh
aaaa
bbbb
cccc
eeee
eeee
eeee
```

b.txt

```sh
aabb
bbbb
dddd
cccc
```

diff a.txt b.txt

```sh
diff --git a/aaa b/bbb
index fc3703c..11629db 100644
--- a/aaa
+++ b/bbb
@@ -1,6 +1,4 @@
-aaaa
+aabb
 bbbb
+dddd
 cccc
-eeee
-eeee
-eeee
```

ed style of result diff a.txt b.txt

```sh
1c1
< aaaa
---
> aabb
2a3
> dddd
4,6d4
< eeee
< eeee
< eeee
```

# Code

My line by line diff just only change no add or delete, result in ed style to use in vim diff.

my_diff.py

```python
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

### Set vimdiff to use result of my diff code

.vimrc

```sh
set diffexpr=MyDiff()
function MyDiff()
    silent execute "!python <your_paht>/my_diff.py " . v:fname_in . " " . v:fname_new . " > " . v:fname_out
endfunction
```

Ref:
1. [use-smarter-algorithm-for-vimdiff-such-as-patience-or-histogram](http://takaaki-kasai-tech.blogspot.com/2014/07/use-smarter-algorithm-for-vimdiff-such-as-patience-or-histogram.html)
2. [Use patience diff algorithm for vimdiff #1466](https://github.com/neovim/neovim/issues/1466)
3. [Vim documentation: diff](http://vimdoc.sourceforge.net/htmldoc/diff.html#diff-options)
4. [Actually using ed](http://blog.sanctum.geek.nz/actually-using-ed/)
5. [Using more of ex](http://blog.sanctum.geek.nz/using-more-of-ex/)

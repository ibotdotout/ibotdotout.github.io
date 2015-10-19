---
layout: post
title: Convert File Encoding in OSX
tags: [osx]
permalink: osx-convert-encoding
excerpt: Covert file from windows that encoded with TIS-620 to UTF-8 for readable in OSX.
---

Sometime, you download file from Internet specially file that in local language
which not encode with UTF-8 that unreadable on OSX. Your should guess
what encode that file using and convert it in to UTF-8.

Ex. Thai language on Windows system normally encode with TIS-620 when
open it in OSX that will display with some symbol char that unreadable.
You should convert that file from tis-620 to utf-8 which make it readable on osx.

```sh
# convert tis-620 to utf-8 encoding
$iconv -f tis-620 -t utf-8 source.xml > destination.xml
```

<!-- more -->

## References:
1. [Converting the encoding of a text file (Mac OS X)](http://superuser.com/questions/151981/converting-the-encoding-of-a-text-file-mac-os-x)
2. [Is there a Mac OS X Command Line application that can convert text encodings from one type to another?  ](http://apple.stackexchange.com/questions/81663/is-there-a-mac-os-x-command-line-application-that-can-convert-text-encodings-fro)


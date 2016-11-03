---
layout: post
title: Git ignore files in sub-directories
tags: [git]
permalink: git-ignore-sub-dir/
# --- option ---
update_date: 2016-11-03
#thumbnail: img_url (local ulr)
#category: article
#excerpt: summary
---

## Example: ignore .css in only /src

.gitignore
```
src/**/*.css
```

<!-- more -->

remove .css that committed in to repo

```
git rm -r --cached .
git add .
git commit
```

### References:
* [Git-ignore certain files in sub-directories, but not all](http://stackoverflow.com/a/6794737/6144391)
* [Ignore files that have already been committed to a Git repository](http://stackoverflow.com/a/1139797/6144391)

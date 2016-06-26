---
layout: post
title: Mongo Search
tags: [mongo]
permalink: mongo-search/
# --- option ---
update_date: 2016-06-28
# thumbnail: img_url (local ulr)
# category: article
# excerpt: summary
---


- [MONGODB FULL TEXT SEARCH VS. REGULAR EXPRESSIONS](https://comsysto.com/blog-post/mongodb-full-text-search-vs-regular-expressions)

- [mongoDB prefix wildcard: fulltext-search ($text) find part with search-string](http://stackoverflow.com/questions/24343156/mongodb-prefix-wildcard-fulltext-search-text-find-part-with-search-string)

<!-- more -->

# Regex

```
db.books.find({title: /สวัสดี/i}, {title: 1}).pretty()
```

- [Mongoose.js find with regex](http://snipref.com/mongoose-js/mongoose-js-find-with-regex/)

- [Mongo $regex](https://docs.mongodb.com/manual/reference/operator/query/regex/)

- [Mongo $regex - Index Use](https://docs.mongodb.com/manual/reference/operator/query/regex/#index-use)

> For case sensitive regular expression queries, if an index exists for the field, then MongoDB matches the regular expression against the values in the index, which can be faster than a collection scan.

> For case insensitive regular expression queries, these queries generally cannot use indexes effectively.


# Fulltext search

```
db.books.ensureIndex({title:"text"})
db.books.reIndex()
db.bokks.find({$text:{$search:"time"}})
```


- [Mongoose.js Search With Full Text Search](http://snipref.com/mongoose-js/mongoose-js-find-with-full-text-search/)

- [MongoDB - Text Search](http://www.tutorialspoint.com/mongodb/mongodb_text_search.htm)

- [Full Text Search with MongoDB & Node.js](https://www.compose.io/articles/full-text-search-with-mongodb-and-node-js/)

- [Full-Text Search in MongoDB](http://code.tutsplus.com/tutorials/full-text-search-in-mongodb--cms-24835)

- [$text](https://docs.mongodb.com/manual/reference/operator/query/text/)

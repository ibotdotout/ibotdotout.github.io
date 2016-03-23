---
layout: post
title: What I know about Apache Cassandra
tags: [cassandra, nosql]
permalink: cassandra
# --- option ---
update_date: 2016-03-24
# category: article
# excerpt: summary
---

# Intro

[Introduction to Apache Cassandra](http://www.datastax.com/wp-content/uploads/2012/08/WP-IntrotoCassandra.pdf)

  > Cassandra has a peer-to-peer distributed architecture that is much more elegant, and easy to set up and maintain.
  > In Cassandra, all nodes are the same; there is no concept of a master node, with all nodes communicating with each other via a gossip protocol.

  > There is nothing programmatic that a developer or administrator needs to do or code to distribute data across a cluster.
  > Data is transparently partitioned across all nodes in either a randomized or ordered fashion, with random being the default.

  > When creating a new Cassandra database (also called a keyspace), a user simply indicates via a single command which data centers and/or cloud providers will hold copies of the new database; everything from that point forward is automatically handled and maintained by Cassandra.

  > If one or more nodes responsible for a particular set of data are down, data is simply written to another node, which temporarily holds the data. Once the node(s) come back online, they automatically bring themselves back up to date from nodes that are holding the data they maintain.

  >  A user requests data from any node (which becomes that user’s coordinator node ), with the user’s query being assembled from one or more nodes holding the necessary data. If a particular node having the required data is down, Cassandra simply requests data from another node holding a replicated copy of that data.

  >  While Cassandra is not a transactional database in the same way that legacy RDBMSs offer ACID transactions, it does offer the “AID” portion of ACID, in that data written is atomic, isolated, and durable. The “C” of ACID does not apply to Cassandra, as there is no concept of referential integrity or foreign keys

  > Because NoSQL databases like Cassandra do not support operations like SQL joins, data tends to be highly denormalized. While such a thing (wide rows) is normally a problem for an RDBMS, Cassandra provides exceptional performance for objects with many thousands of columns.

<!-- more -->

[Cassandra vs MongoDB](http://exponential.io/blog/2015/01/22/cassandra-vs-mongodb/)

[System Properties Comparison Cassandra vs. MongoDB](http://db-engines.com/en/system/Cassandra%3BMongoDB)

[Face Off: MongoDB Vs HBase Vs Cassandra](http://www.edureka.co/blog/mongodb-vs-hbase-vs-cassandra/)

[A Real Comparison Of NoSQL Databases HBase, Cassandra & MongoDB](https://www.linkedin.com/pulse/real-comparison-nosql-databases-hbase-cassandra-mongodb-sahu)


[MongoDB. This is not the database you are looking for.](http://patrickmcfadin.com/2014/02/11/mongodb-this-is-not-the-database-you-are-looking-for/)

[DataStax Cassandra Tutorials - Apache Cassandra Overview](https://www.youtube.com/watch?v=5qEoEAfAer8)

[A Brief Introduction to Apache Cassandra](https://academy.datastax.com/demos/brief-introduction-apache-cassandra)

[Real data models of silicon valley](http://www.slideshare.net/patrickmcfadin/real-data-models-of-silicon-valley)

[Migrate a Relational Database Structure into a NoSQL Cassandra Structure (Part I)](http://www.divconq.com/2010/migrate-a-relational-database-structure-into-a-nosql-cassandra-structure-part-i/)

[Migrate a Relational Database into Cassandra (Part II – Northwind Planning)](http://www.divconq.com/2010/migrate-a-relational-database-structure-into-a-nosql-cassandra-structure-part-ii-northwind-planning/)

  > In a relational database setting I can often simply normalize away and worry about which table I need to focus my indexing efforts on later when I’m working in the application.  However, in NoSQL, non-relational database design, we often need to decide up front which entity most queries will be interested in and build everything else around that entity.

  > So…will it be “order” or “product”?  Today I’ll decide that the key entity in this database is “order” – customers will be hitting this on a daily, per transaction basis whereas I can probably run my product reports offline.

[SoundCloud’s Activity Feed and Real-Time Stats Powered by Apache Cassandra](http://www.planetcassandra.org/blog/soundcloud-activity-feed-and-real-time-stats-powered-by-apache-cassandra/)

[Spotify scales to the top of the charts with Apache Cassandra at 40k requests/second](http://www.planetcassandra.org/blog/interview/spotify-scales-to-the-top-of-the-charts-with-apache-cassandra-at-40k-requestssecond/)

[C* Summit EU 2013: Playlists at Spotify - Using Cassandra to Store Version Controlled Objects](https://www.youtube.com/watch?v=NQXxKzfv7Zo) - [Slide](http://www.slideshare.net/planetcassandra/c-summit-eu-2013-playlists-at-spotify-using-cassandra-to-store-version-controlled-objects)

[Big Data Platforms: How To Migrate From Relational Databases to NoSQL](http://www.information-management.com/news/big-data-analytics/Relational-Database-Big-Data-Migration-Guide-10026758-1.html)

[Apache Cassandra - O'Reilly - Video Training](https://www.youtube.com/playlist?list=PLtNErhYMkHnF2LleKggnFhNcF4t37iDCZ)

[Migration Best Practices: From RDBMS to Cassandra without a Hitch](http://www.slideshare.net/planetcassandra/migration-best-practices-from-rdbms-to-cassandra-without-a-hitch)

# Data Model

[Cassandra FAQ: Can I Start With a Single Node?](http://www.planetcassandra.org/blog/cassandra-faq-can-i-start-with-a-single-node/)

[Data Density! Destroyer of Scalability](https://lostechies.com/ryansvihla/2015/09/17/data-density-destroyer-of-scalability/)

[Cassandra From a Relational World](https://medium.com/@mustwin/cassandra-from-a-relational-world-7bbdb0a9f1d#.217xii10w)

> When you are designing the schema for your relational database, the primary thought on your mind is “What’s the best way to store this data?”. But with Cassandra, your dominant concern should be “How am I going to query this data?”

[DataModel - Introduction](https://wiki.apache.org/cassandra/DataModel)

[Cassandra - Data Model](http://www.tutorialspoint.com/cassandra/cassandra_data_model.htm)

[Modeling data with Cassandra: what CQL hides away from you](http://www.ipponusa.com/blog/modeling-data-with-cassandra-what-cql-hides-away-from-you/)

[Basic Rules of Cassandra Data Modeling](http://www.datastax.com/dev/blog/basic-rules-of-cassandra-data-modeling)

> Developers coming from a relational background usually carry over rules about relational modeling and try to apply them to Cassandra. To avoid wasting time on rules that don’t really matter with Cassandra

> Writes in Cassandra aren’t free, but they’re awfully cheap. Cassandra is optimized for high write throughput, and almost all writes are equally efficient [1]. If you can perform extra writes to improve the efficiency of your read queries, it’s almost always a good tradeoff.

> Denormalization and duplication of data is a fact of life with Cassandra. Don’t be afraid of it. Disk space is generally the cheapest resource (compared to CPU, memory, disk IOPs, or network), and Cassandra is architected around that fact.

>  Cassandra doesn’t have JOINs, and you don’t really want to use those in a distributed fashion.

>  Rows are spread around the cluster based on a hash of the partition key, which is the first element of the PRIMARY KEY. So, the key to spreading data evenly is this: pick a good primary key.

> Partitions are groups of rows that share the same partition key. When you issue a read query, you want to read rows from as few partitions as possible.

> The way to minimize partition reads is to model your data to fit your queries. Don’t model around relations. Don’t model around objects.

> If you need different types of answers, you usually need different tables. This is how you optimize for reads.

Remember, data duplication is okay. Many of your tables may repeat the same data.

[DS220: Data Modeling](https://academy.datastax.com/courses/ds220-data-modeling)

[Data Modeling Concepts](http://docs.datastax.com/en/cql/3.1/cql/ddl/dataModelingApproach.html)

[Data modeling example](http://docs.datastax.com/en/cql/3.1/cql/ddl/ddl_intro_c.html)

[Using collections - Set, List, Map Types](http://docs.datastax.com/en/cql/3.1/cql/cql_using/use_collections_c.html)

[Common Cassandra Data Modelling Traps](https://www.instaclustr.com/blog/2015/08/03/common-cassandra-data-modelling-traps/)

[Data Modelling Recommended Practices](https://support.instaclustr.com/hc/en-us/articles/207071957)

[The DevOps of Cassandra Data Modeling](http://www.seastar.io/blog/the-devops-of-cassandra-data-modeling/)
> In Cassandra, it is best to start the data modeling process by defining your query patterns first.

[An Advanced Cassandra Data Modeling Guide](https://www.hakkalabs.co/articles/cassandra-data-modeling-guide)
> Denormalize ALL THE THINGS: Increase the number of writes to reduce and simplify reads 
> Most importantly we did this without querying multiple tables and merging and reconciling the results by using a data model that duplicates data and writes our host information in a de-normalized manner contrary to the original highly relational MySQL data model.

[Cassandra Data Modeling Best Practices by eBay ,  Slide](http://www.slideshare.net/jaykumarpatel/cassandra-data-modeling-best-practices)
[Cassandra Data Modeling Best Practices by eBay, Part 1](http://www.ebaytechblog.com/2012/07/16/cassandra-data-modeling-best-practices-part-1/)
[Cassandra Data Modeling Best Practices by eBay, Part 2](http://www.ebaytechblog.com/2012/08/14/cassandra-data-modeling-best-practices-part-2/)

[Advanced data modeling with apache cassandra](http://www.slideshare.net/patrickmcfadin/advanced-data-modeling-with-apache-cassandra)
Data Modeling Step:
1. Conceptual Data Model (ER Diagram?)
2. Application Query Workflow
3. Logical Data Model (Combine 1 & 2)
4. Physical Data Model (3 with Data Type)

[Cassandra By Example: Data Modelling with CQL3](http://www.slideshare.net/jericevans/cassandra-by-example-data-modelling-with-cql3) - [Twissandra - Twitter + Cassandra](https://github.com/twissandra/twissandra/)

[Cassandra Data Modeling - Practical Considerations @ Netflix](http://www.slideshare.net/nkorla1share/cass-summit-3)

[The most important thing to know in Cassandra data modeling: The primary key](http://www.planetcassandra.org/blog/the-most-important-thing-to-know-in-cassandra-data-modeling-the-primary-key/)

[The importance of single-partition operations in Cassandra](http://www.planetcassandra.org/blog/the-importance-of-single-partition-operations-in-cassandra/)

[Transitioning from MySQL to Cassandra at Chaordic](http://www.planetcassandra.org/blog/transitioning-from-mysql-to-cassandra-at-chaordic-2/)

[Static columns in Cassandra and their benefits](https://blogs.infosupport.com/static-columns-in-cassandra-and-their-benefits/)

[Understanding Deletes](https://medium.com/@foundev/domain-modeling-around-deletes-1cc9b6da0d24#.6k2dnj3nj)

[Learn Cassandra - GitBook](https://www.gitbook.com/book/teddyma/learncassandra/details)

[Data Modeling for Scale with Cassandra](https://lostechies.com/ryansvihla/2014/04/17/100/)

[Cassandra: Batch loading without the Batch keyword](https://medium.com/@foundev/cassandra-batch-loading-without-the-batch-keyword-40f00e35e23e#.at85ikylw)

[Playlist tutorial](https://docs.datastax.com/en/playlist/doc/java/playlistPreface.html)

[Eventually Consistent - Revisited](http://www.allthingsdistributed.com/2008/12/eventually_consistent.html)

> the CAP theorem, which states that of three properties of shared-data systems—data consistency, system availability, and tolerance to network partition—only two can be achieved at any given time.

> An important observation is that in larger distributed-scale systems, network partitions are a given; therefore, consistency and availability cannot be achieved at the same time. This means that there are two choices on what to drop: relaxing consistency will allow the system to remain highly available under the partitionable conditions, whereas making consistency a priority means that under certain conditions the system will not be available.

[Cassandra Query Patterns: Not using the “in” query for multiple partitions.]
(https://lostechies.com/ryansvihla/2014/09/22/cassandra-query-patterns-not-using-the-in-query-for-multiple-partitions/)

# Driver

[nodejs-driver - DataStax Node.js Driver for Apache Cassandra](https://github.com/datastax/nodejs-driver)
[Getting Started with Apache Cassandra and Node.js](https://academy.datastax.com/demos/getting-started-apache-cassandra-and-nodejs)
[nodejs-driver - Getting started](http://datastax.github.io/nodejs-driver/getting-started)

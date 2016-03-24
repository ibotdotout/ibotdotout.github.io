---
layout: post
title: Pair Programming
tags: coding
update_date: 2016-01-09
permalink: pair-programming/
---

> My mind to your mind. My thoughts to your thoughts... -- MrSpock


## [All I really need to know about pair programming I learned in kindergarten](http://www.cs.rice.edu/~mgricken/teaching/402/09-spring/readings/Everything.pdf)

> When it comes to programming practices,
> studies show two heads are almost always better than one.

> The pair can solve problems they couldn’t solve alone and can help
> improve each other’s skills.

> If you think about something long enough, the brain will consider it a
> truth.  If you tell yourself something negative, such as “I'm a terrible
> programmer,” soon your brain will believe you.

<!-- more -->


## [Power of Pair Programming](https://www.youtube.com/watch?v=l8W6T5Opfcw)

เพิ่งได้ดู Power of Pair Programming จากงาน [Agile Thailand](https://www.facebook.com/AGTH66) น่าจะของปี 2012
[พี่รูฟ Twin Panichsombat](https://www.facebook.com/roofimon.class) ได้พูดถึงประสบการ์การนำ pair programming เข้าไปใช้ใน
[Opendream](https://www.facebook.com/opendream)

<center><iframe width="420" height="315"
src="https://www.youtube.com/embed/l8W6T5Opfcw" frameborder="0"
allowfullscreen></iframe></center>

โดยส่วนตัวสรุปคร่าวๆ ได้ดังนี้

- การ pair ทำให้การเขียนโปรแกรมสนุกยิ่งขึ้น แต่ไม่ใช่ทุกคนที่จะแฮปปี้กับมัน
- เพิ่มการสื่อสารภายในองคร์ pair เป็นการสื่อสารความคิด ความเข้าใจ
หากแค่นั่งด้วยกันแล้วคอยบอกให้ทำอะไร นั้นไม่ใช่การ pair
- pair ทำให้การทำงานช้าลงประมาณ 10 % แต่คุณภาพเพิ่มขึ้น 10-20 %
เนื่องจากมีการ review code ไปในตัว ลดการเกิด bug ได้ระดับนึง
- มีการกระจาย knowledge ภายในองกรค์ ไม่ขึ้นอยู่กับคนใด คนหนึ่งมากเกินไป
- ทำให้โปรแกรมเมอร์โฟกัสได้ดีขึ้น เพราะ ไม่สามารถเล่นเฟส ไลท์ บลาๆ ระหว่าง pair ได้
- อาจจะมีการหมุนเวียนการ pair เพื่อกระจาย knowledge และ ลดการเตี้ยมกันเพื่อเล่นเฟส บลาๆ
- ทำให้ junior สามารถอัพสกิลได้เร็วขึ้นมาก โดยมี senior คอยดูแล
- junior pair junior อาจจะทำให้งานช้ากว่าเดิมได้ (หลงป่า ออกทะเล)
และอาจจะต้องมี senior มา review code ซํ้าอีกครั้งหนึ่ง ซึ่งทำให้เปลืองเวลาของ senior
มากกว่า การ pair กับ senior ไปเลย
- การทำ pair ทั้งวัน อาจจะทำให้เครียดมากกว่าเดิมได้ เนื่องจากโฟกัสที่งานตลอดเวลา
มักนำเทคนิค [Pomodoro]({{url}}/pomodoro) มาประยุกต์ใช้ เช่นทำ 45 นาที พัก 15 นาที

ป.ล. การ pair ภายในคลิปจะใช้การ pair แบบ navigator driver โดยที่ senior คุมเมาส์ junior คุมคีย์บอร์ด
โดยมี senior เป็น navigator คอยบอกว่าจะทำอะไร ตรงไหน junior เป็นคน
เขียนโค๊ด แต่ที่เราทำๆ กันมาจะเป็นแบบ ping pong สลับกันเขียนเทส และ โค๊ด
ไปคนละเทสเคสแทน


## Pairing Styles
1. [driver-navigator]( http://articles.coreyhaines.com/posts/thoughts-on-pair-programming/#driver-navigator)
2. [ping-pong-pairing](http://articles.coreyhaines.com/posts/thoughts-on-pair-programming/#ping-pong-pairing)

- [Read more about pair programming]({{url}}/coding#pair-programming)

## Tools:
### SSH + Wemux (Recommended)
- [Pair Programming with Wemux](http://blog.rapin.com/pair-programming-with-wemux-and-vim/)
- [Pair Programming With Tmux Secure pair programming with wemux and Vim](http://martinbrochhaus.com/pair.html)
- [Simple Remote Pairing with wemux](http://spin.atomicobject.com/2012/04/04/simple-remote-pairing-with-wemux/)
- [Docker based Paring](https://github.com/dpetersen/dev-container-base)
- [github-auth - SSH-KEY via GitHub account](https://github.com/chrishunt/github-auth)

### Atom Paring (Easier but paring cant' see its result)
- [Atom MotePair](https://atom.io/packages/motepair)
- [AtomPair](https://atom.io/packages/atom-pair)
- [Atom Runner](https://atom.io/packages/atom-runner)
- [terminal-panel](https://atom.io/packages/terminal-panel)

### Git Sharing Credit

#### Tricks to linking with GitHub Account:
- [Difference between author and committer in Git?](http://stackoverflow.com/questions/18750808/difference-between-author-and-committer-in-git)
- [GitHub set author/committer](http://jasonnoble.org/2009/04/github-set-authorcommitter.html)
- [Setting your email in Git](https://help.github.com/articles/setting-your-email-in-git/)

  ```sh
  $ export GIT_COMMITTER_EMAIL=your_email@example.com
  $ export GIT_AUTHOR_EMAIL=your_email@example.com
  ```

- [Git log - see Author Email/ Commit Email](https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History)

  ```sh
  $ git log --pretty=format:"%h - %ae, %ce"
  ```

#### Tools  
just tell email and who not linking with GitHub Account and trick very old.  

* [Project specific git author, without the gas pains](http://www.codeography.com/2011/08/05/project-specific-git-author.html)
* [Git pairing aliases, prompts and avatars](http://thepugautomatic.com/2013/11/git-pairing/)
* [“Pairing With Hitch”](http://blog.leshill.org/blog/2009/04/20/pairing-with-hitch.html)

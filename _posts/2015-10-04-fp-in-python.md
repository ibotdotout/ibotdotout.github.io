---
layout: post
title: Functional Programming in Python
tags: python
permalink: fp-python/
---

พอดีเพิ่งอ่าน [Oreilly.com FP in python](http://www.oreilly.com/programming/free/files/functional-programming-python.pdf) จบ แบบมึนๆ เนื่องจากยังไม่แน่นใน concept
ของ FP เลยมาสรุปแปะไว้ก่อน เผื่อใครสนใจอ่าน

<!-- more -->

1. python แค่ยืม concept บางส่วนมาจาก FP
2. แนวคิดแบบ FP สามารถนำมาประยุกต์ใช้ให้โค๊ดดีขึ้น เช่น
  - list comprehensive / generator expression
  - map, reduce, filters (ใช้ list comprehensive จะดีกว่า)
3. แนวคิด Pure Functions (no side effect) ของ FP ทำให้โค๊ด test และ debug
ได้ง่ายขึ้น
  - ความรู้ที่ต้องการ
  - mathematic เนื่องจากแนวความคิดของ FP มาจาก math เข้าใจ math มีส่วนช่วยให้คิด/เข้าใจได้ง่ายขึ้น
  - Iterators
  - list comprehensive / generator expression
  - build-in function in python
  - python decorator

แนะนำให้ดูสไลนี้จะเข้าใจได้ง่ายกว่า
<http://kachayev.github.io/talks/uapycon2012/#/>

เรื่อง build-in functions ที่จำเป็นสามารถดูได้จาก
<https://docs.python.org/3.5/howto/functional.html>

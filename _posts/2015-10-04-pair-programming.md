---
layout: post
title: Pair Programming
tags: coding
permalink: pair-programming
---

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

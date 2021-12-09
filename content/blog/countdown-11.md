---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 11",
  "description": "Code Reading Club Reading Countdown - 11",
  "image": "images/articles/CRCRC-11.png",
  "draft": false,
  "published": "2021-12-11",
}
---



## Countdown - Snippet 11

Today's code reading countdown in SQL.

**Snippet**

![CRCRC-11](/images/articles/CRCRC-11.png)

**Snippet in text**

```sql
-- 학생들 중 여학생들을 확인하는 쿼리문을 작성하세요.
select * 
from student 
where st_reg_num like '______-2%' or st_reg_num like '______-4%';

select * 
from student 
where st_reg_num like '%-2%' or st_reg_num like '%-4%';
```

**Question**

Explain these two queries in words, and the difference between them.

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

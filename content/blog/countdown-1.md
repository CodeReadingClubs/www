---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 1",
  "description": "Code Reading Club Reading Countdown - 1",
  "draft": false,
  "published": "2021-12-01",
}
---



## Countdown - Snippet 1

Here is our first code reading exercise, a question-based one in JavaScript.

**Snippet**

![Advent-of-Code-Dec-2](images/articles/CRCRC-1.png)

**Snippet in text**

```javascript
// four ways to match four slashes
const input = '////';

const first = /[/][/][/][/]/;
const second = /\/\/\/\//;
const third = /[/]{4}/;
const fourth = /\/{4}/;

const result = [first, second, third, fourth].map(regex => regex.test(input));
console.log(result);

//Submitted by:
//Martin Winkler @KanonierWinkler
```

**Question**

Are these four regexes the same?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

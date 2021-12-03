---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 2",
  "description": "Code Reading Club Reading Countdown - 2",
  "image": "images/articles/CRCRC-2.png",
  "draft": false,
  "published": "2021-12-02",
}
---



## Countdown - Snippet 2

Today's code reading countdown in Python.

**Snippet**

![CRCRC-2](/images/articles/CRCRC-2.png)

**Snippet in text**

```python
def equality_check(self, args):
    arg0 = process_variable(args[0], self.lookup)
    arg1 = process_variable(args[1], self.lookup)
    if len(args) == 2:
        return f"str({arg0}) == str({arg1})" #no and statements
    else:
        return f"str({arg0}) == str({arg1}) and {args[2]}"
      
# submitted by Felienne (@felienne)
```

**Question**

What assumptions did the author of this code make?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

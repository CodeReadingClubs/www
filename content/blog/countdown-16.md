---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 16",
  "description": "Code Reading Club Reading Countdown - 16",
  "image": "images/articles/CRCRC-16.png",
  "draft": false,
  "published": "2021-12-16",
}
---



## Countdown - Snippet 16

Today's code reading countdown is written in Dart.

**Snippet**

![CRCRC-16](/images/articles/CRCRC-16.png)

**Snippet in code**

```dart
Parser buildParser() {
  final builder = ExpressionBuilder();
  builder.group()
    ..primitive((pattern('+-').optional() &
            digit().plus() &
            (char('.') & digit().plus()).optional() &
            (pattern('eE') & pattern('+-').optional() & digit().plus())
                .optional())
        .flatten('number expected')
        .trim()
        .map(num.tryParse))
    ..wrapper(
        char('(').trim(), char(')').trim(), (left, value, right) => value);
  builder.group().prefix(char('-').trim(), (op, num a) => -a);
  builder.group().right(char('^').trim(), (num a, op, num b) => pow(a, b));
  builder.group()
    ..left(char('*').trim(), (num a, op, num b) => a * b)
    ..left(char('/').trim(), (num a, op, num b) => a / b);
  builder.group()
    ..left(char('+').trim(), (num a, op, num b) => a + b)
    ..left(char('-').trim(), (num a, op, num b) => a - b);
  return builder.build().end();
}
```

**Question**

Give an example of a string this code parses and an example of a string that this code does not parse.

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

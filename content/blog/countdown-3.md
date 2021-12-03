---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 3",
  "description": "Code Reading Club Reading Countdown - 3",
  "image": "images/articles/CRCRC-3.png",
  "draft": false,
  "published": "2021-12-03",
}
---



## Countdown - Snippet 3

Today's code reading countdown again in JavaScript!

**Snippet**

![CRCRC-3](/images/articles/CRCRC-3.png)

**Snippet in Code**

```javascript
function prefixTreeBuilder(wordList) {
  const root = {};
  for (const word of wordList) {
    let node = root;
    for (const char of word) {
      let nextNode = node[char];
      if (!nextNode) node[char] = nextNode = {end: false};
      node = nextNode;
    }
    node.end = true; // mark the nodes that are endings of real words
  }

  function findChildren(node, prefix, list, maxLength) {
    if (node.end) list.push(prefix);
    for (const char in node) {
      findChildren(node[char], prefix + char, list, maxLength);
      if (list.length >= maxLength) return list;
    }
    return list;
  }

  function findSuffixes(prefix, maxLength) {
    prefix = prefix.toLowerCase();
    let node = root;
    for (const char of prefix) {
      let nextNode = node[char];
      if (!nextNode) return [""];
      node = node[char];
    }
    let words = findChildren(node, prefix, [], maxLength);
    return words;
  }

  return {root, findSuffixes};
}

//Submitted by Job van der Zwan, @JobvdZwan
```

**Question**

Which JavaScript behavior(s) and feature(s) does this code exploit to *not* break where other languages might protest?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

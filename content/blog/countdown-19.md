---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 19",
  "description": "Code Reading Club Reading Countdown - 19",
  "image": "images/articles/CRCRC-19.png",
  "draft": false,
  "published": "2021-12-19",
}
---



## Countdown - Snippet 19

Today, a snippet in typescript.

**Snippet**

![CRCRC-19](/images/articles/CRCRC-19.png)

**Snippet in code**

```typescript
setGlobalState(state: Record<string, any> = {}) {
  if (state === globalState) {
    console.warn('state has not changed！');
    return false;
  }

  const changeKeys: string[] = [];
  const prevGlobalState = cloneDeep(globalState);
  globalState = cloneDeep(
    Object.keys(state).reduce((_globalState, changeKey) => {
      if (isMaster || _globalState.hasOwnProperty(changeKey)) {
        changeKeys.push(changeKey);
        return Object.assign(_globalState, { [changeKey]: state[changeKey] });
      }
      console.warn(`'${changeKey}' not declared when init state！`);
      return _globalState;
    }, globalState),
  );
  if (changeKeys.length === 0) {
    console.warn('state has not changed！');
    return false;
  }
  emitGlobal(globalState, prevGlobalState);
  return true;
},
```



**Question**

In what situations is the global state *not* changed by this code?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

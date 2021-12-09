---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 12",
  "description": "Code Reading Club Reading Countdown - 12",
  "image": "images/articles/CRCRC-12.png",
  "draft": false,
  "published": "2021-12-12",
}
---



## Countdown - Snippet 12

Today's code reading countdown in Haskell.

**Snippet**

![CRCRC-12](/images/articles/CRCRC-12.png)

**Snippet in text**

```haskell
printSolutions [] = do
   putStrLn "false.\n"
printSolutions (u:us) = do
   if null u
      then putStr "true"
      else putStr $ intercalate ",\n" [ show k ++ " = " ++ show v | (k,v) <- u ]
   c <- getChar
   case c of
      ' ' -> do putStrLn ";"
                printSolutions us;
      _   -> do putStrLn ""
```

**Question**

Given a non-empty list of solutions, what does this output?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

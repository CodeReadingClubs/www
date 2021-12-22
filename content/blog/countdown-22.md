---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 22",
  "description": "Code Reading Club Reading Countdown - 22",
  "image": "images/articles/CRCRC-22.png",
  "draft": false,
  "published": "2021-12-22",
}


---



## Countdown - Snippet 22

Today, a snippet in Erlang submitted by @_eddieantonio (also one of our top code readers!)

**Snippet**

![CRCRC-22](/images/articles/CRCRC-22.png)


```erlang
% For some odd reason, Erlang doesn't have this builtin:
pow(X, Y) when Y < 0 ->
    1/pow(X, -Y);
pow(X, Y) when is_integer(Y) ->
    pow_recursive(X, Y, 1).

pow_recursive(_, 0, Result) ->
    Result;
pow_recursive(X, Y, Product) ->
    NextProduct = case Y rem 2 of
             0 -> Product;
             1 -> X * Product
         end,
    pow_recursive(X * X, Y div 2, NextProduct).
```

**Question**

What alternative names can you choose for the variables in this snippet?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

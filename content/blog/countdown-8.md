---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 8",
  "description": "Code Reading Club Reading Countdown - 8",
  "image": "images/articles/CRCRC-8.png",
  "draft": false,
  "published": "2021-12-08",
}
---



## Countdown - Snippet 8

Today's code reading countdown in Rust.

**Snippet**

![CRCRC-8](/images/articles/CRCRC-8.png)

**Snippet in text**

```rust
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct PartialTargetTriple {
    pub arch: Option<String>,
    pub os: Option<String>,
    pub env: Option<String>,
}

fn from_build() -> Result<PartialTargetTriple, String> {
    let triple = if let Ok(triple) = env::var("RUSTUP_OVERRIDE_BUILD_TRIPLE") {
        triple
    } else {
        env::var("TARGET").unwrap()
    };
    PartialTargetTriple::new(&triple).ok_or(triple)
}
```

**Question**

Give an example of a return value of `from_build()`

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

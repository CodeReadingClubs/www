---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 4",
  "description": "Code Reading Club Reading Countdown - 4",
  "image": "images/articles/CRCRC-4.png",
  "draft": false,
  "published": "2021-12-04",
}
---



## Countdown - Snippet 4

Today's code reading countdown is written in Ruby!

**Snippet**

![CRCRC-4](/images/articles/CRCRC-4.png)

**Snippet in Code**

```ruby
def call
    total = 0
    num_of_violations_allowed = 0

    violations.each do |violation|
        message_length = violation.message.length + 80 
        # 80 is ~ the size of html wraps violation message

        if total + message_length < LIMIT
            total += message_length
            num_of_violations_allowed += 1
        else
            break
        end
    end

    num_of_violations_allowed
end

# Submitted by Dan Fishgold
```

**Question**

What will be the value of `total` at the end of the function?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

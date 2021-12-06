---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 7",
  "description": "Code Reading Club Reading Countdown - 7",
  "image": "images/articles/CRCRC-7.png",
  "draft": false,
  "published": "2021-12-07",
}
---



## Countdown - Snippet 7

Today's code reading countdown in Lua.

**Snippet**

![CRCRC-7](/images/articles/CRCRC-7.png)

**Snippet in text**

```lua
curses = require 'curses'
window = curses.initscr()

n = 0

function render(window)
  window:clear()
  window:mvaddstr(5, 5, n)  -- print n at location (5, 5) on screen
  window:refresh()
end

function update()
  local key = curses.getch()
  if key == '\n' then  -- Enter
    n = n + 1
  end
end

while true do
  render(window)
  update()
end
//Submitted by Kartik Agaram, @akkartik 
```

**Question**

How can this code be generalized?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

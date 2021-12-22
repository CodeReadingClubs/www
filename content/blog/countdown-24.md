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


```python
clearscreen
setcolor pick [green]
rt 90

TO sideleft :length :width
sidewithball :length
lt 135
fd :width
END

TO sideright :width :length 
fd :width
lt 135
sidewithball :length
END

TO square :size
  repeat 4 [fd :size rt 90]
END

TO ball
setcolor pick [ red orange yellow grey blue violet gold ]
repeat 10 [square 15 rt 36]
setcolor pick [green]
END

TO sidewithball :length
fd :length/2
ball
fd :length/2
END

sideright 200 200
rt 135
sideright 100 150
rt 135
sideright 80 120

lt 90
ball

sideleft 120 80
rt 135
sideleft 150 100
rt 135
sideleft 200 100

setcolor pick [brown]
square 100
```

**Question**

What does this draw? 

## Submission

Submit your answer in our [form](https://forms.gle/241ak22gMu1fRada6).
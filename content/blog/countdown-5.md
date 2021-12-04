---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 5",
  "description": "Code Reading Club Reading Countdown - 5",
  "image": "images/articles/CRCRC-5.png",
  "draft": true,
  "published": "2021-12-05",
}
---



## Countdown - Snippet 5

Today's code reading countdown in C#.

**Snippet**

![CRCRC-5](/images/articles/CRCRC-5.png)

**Snippet in text**

```c#
public bool TransitionTo(Vector2 target, Vector2 direction)
{
    MoveTowardsX(target.X, 60f * Engine.DeltaTime);
    MoveTowardsY(target.Y, 60f * Engine.DeltaTime);

    //Update hair because the normal update loop is not firing right now!
    UpdateHair(false);
    UpdateCarry();

    //Returns true when transition is complete
    if (Position == target)
    {
        ZeroRemainderX();
        ZeroRemainderY();
        Speed.X = (int)Math.Round(Speed.X);
        Speed.Y = (int)Math.Round(Speed.Y);
        return true;
    }
    else
      	return false;
}

//Submitted by Dan Fishgold
```



**Question**

Which value(s) does this function depend on?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

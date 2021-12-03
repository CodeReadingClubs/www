---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 6",
  "description": "Code Reading Club Reading Countdown - 6",
  "image": "images/articles/CRCRC-6.png",
  "draft": true,
  "published": "2021-12-06",
}
---



## Countdown - Snippet 6

Today's code reading countdown in Java.

**Snippet**

![CRCRC-6](/images/articles/CRCRC-6.png)

Snippet in text

```java
public static void mkSnack(Activity av, View v, SpannableStringBuilder msg) {
  av.runOnUiThread(new Runnable() {
    public void run() {
      AppStatusManager appStatusManager = new AppStatusManager();
      appStatusManager.makeSnackBar(v, msg, Snackbar.LENGTH_LONG)
        .setAction(av.getString(R.string.dismiss_text), new 	View.OnClickListener() {
          @Override
          public void onClick(View v) {
            appStatusManager.getmSnackBar().dismiss();
          }
        }).show();
    }
  });
}
//Submitted by Dan Fishgold
```



**Question**

What does `@Override` (in line 8) do in this code?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

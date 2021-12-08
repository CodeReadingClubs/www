---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 9",
  "description": "Code Reading Club Reading Countdown - 9",
  "image": "images/articles/CRCRC-9.png",
  "draft": false,
  "published": "2021-12-09",
}
---



## Countdown - Snippet 9

Today's code reading countdown in PHP.

**Snippet**

![CRCRC-9](/images/articles/CRCRC-9.png)

**Snippet in text**

```php
do_action( 'preprocess_signup_form' );
if ( is_user_logged_in() && ( 'all' === $active_signup || 'blog' === $active_signup ) ) {
    signup_another_blog( $newblogname );
} elseif ( ! is_user_logged_in() && ( 'all' === $active_signup || 'user' === $active_signup ) ) {
    signup_user( $newblogname, $user_email );
} elseif ( ! is_user_logged_in() && ( 'blog' === $active_signup ) ) {
    _e( 'Sorry, new registrations are not allowed at this time.' );
} else {
    _e( 'You are logged in already. No need to register again!' );
}
```

**Question**

What user stories do you recognize in this snippet?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).

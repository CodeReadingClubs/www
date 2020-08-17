# Code Reading Clubs information site

[Published site](https://codereadingclubs.github.io/www/)

## Adding or editing content
### Content is provided by markdown files
- [index page](https://github.com/CodeReadingClubs/www/blob/main/content/index.md)
- [Blog pages](https://github.com/CodeReadingClubs/www/blob/main/content/blog)
- Blogs can be in draft (only visible in a dev environment) by adding `"draft": true` to the blog's `.md` file

### Authors are defined with name, avatar and bio required
- [list of authors](https://github.com/CodeReadingClubs/www/blob/main/src/Data/Author.elm)
- Add a new author by adding a new record to the `all` list like this:

```
all =
    [ { name = "Author Name"
      , avatar = Pages.images.author.jpegname
      , bio = "Brief biographical info"
      }
    ,
      { name = "Another Author"
      , avatar = Pages.images.author.anotherjpegname
      , bio = "Some biographical info"
      }

    ]
```

### Images files need to be added before they can be used by authors and articles
- [author images](https://github.com/CodeReadingClubs/www/tree/main/images/author)
- [article images](https://github.com/CodeReadingClubs/www/tree/main/images/article-covers)

## Deploy to GitHub pages with Travis

We're using [Travis](https://travis-ci.org).
- On every push to the repo, Travis will build and run tests
- On every push or merge to `main` branch, Travis will deploy to `gh-pages`

Encrypted vars can be added to `.travis.yml` using the travis cli tools as decribed in the [travis docs](https://docs.travis-ci.com/user/encryption-keys/#usage).
Currently configured with GITHUB_TOKEN value.

## Development Setup Instructions

- Install: `npm install`
- Run dev server: `npm start` (uses `elm-pages develop`)

## How this stuff works

- You can tweak the `content` folder and change the `src/Main.elm` file.
- The entrypoint file is `index.js`. That file imports `src/Main.elm`. 
- The `content` folder is turned into static pages.
- The rest is mostly determined by logic in the Elm code.

## Further resource
### Site template generated from [dillonkearns/elm-pages-starter](https://github.com/dillonkearns/elm-pages-starter)

### Learn more about `elm-pages`

- Documentation site: https://elm-pages.com
- [Elm Package docs](https://package.elm-lang.org/packages/dillonkearns/elm-pages/latest/)
- [`elm-pages` blog](https://elm-pages.com/blog)

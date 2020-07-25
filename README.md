# Code Reading Clubs information site


## Setup Instructions

- Install: `npm install`
- Run dev server: `npm start` (uses `elm-pages develop`)


## Deploy to GitHub pages with Travis

We're using [Travis](https://travis-ci.org).
- On every push to the repo, Travis will build and run tests
- On every tag pushed, Travis will deploy to `gh-pages`

Encrypted vars can be added to `.travis.yml` using the travis cli tools as decribed in the [travis docs](https://docs.travis-ci.com/user/encryption-keys/#usage).
Currently configured with GITHUB_TOKEN value.


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

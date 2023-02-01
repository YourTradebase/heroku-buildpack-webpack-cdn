# heroku-buildpack-webpack-cdn

Downloads a webpack manifest file from a cloud storage provider (WEBPACK_MANIFEST_HOST) and places it in the webpack pack directory,
so it (and apps that depend on it) can correctly reference hashed files.

Adds CDN host (WEBPACK_CDN) prefix to the manifest urls during dyno startup, as the host can differ based on where the dyno is run (pipelines).

## Prerequisites

```bash
  $ heroku buildpacks:add https://github.com/YourTradebase/heroku-buildpack-webpack-cdn
  $ heroku config:add WEBPACK_PUBLIC_PATH=public
  $ heroku config:add WEBPACK_OUTPUT_PATH=packs
  $ heroku config:add WEBPACK_MANIFEST_HOST={something}.eu-west-1.amazon.aws.com
  $ heroku config:add WEBPACK_CDN={something}.cloudfront.com
```

# heroku-buildpack-webpack-cdn

Downloads a webpack manifest file from a cloud storage provider and places it in the webpack pack directory,
so it (and apps that depend on it) can correctly reference hashed files.

## Prerequisites

    $ heroku buildpacks:add https://github.com/YourTradebase/heroku-buildpack-webpack-cdn
    $ heroku config:add WEBPACK_PUBLIC_OUTPUT_PATH=packs
    $ heroku config:add WEBPACK_PUBLIC_ROOT_PATH=public
    $ heroku config:add WEBPACK_PUBLIC_S3_HOST={something}.eu-west-1.amazon.aws.com

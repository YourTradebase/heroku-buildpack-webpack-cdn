# !/bin/bash
#
# Add a prefix to all urls in the webpack manifest file,
# this can be run against the same manifest if the WEBPACK_CDN changes.

manifest_path="$BUILD_DIR/$WEBPACK_PUBLIC_PATH/$WEBPACK_OUTPUT_PATH/manifest.json"

if [ ! -f $manifest_path ]; then
  echo "Manifest not found: $manifest_path"
  exit 1
fi

# if manifest exists continue

remove_cdn="s|http.+/$WEBPACK_OUTPUT_PATH|/$WEBPACK_OUTPUT_PATH|g"
add_cdn="s|/$WEBPACK_OUTPUT_PATH|$WEBPACK_CDN/$WEBPACK_OUTPUT_PATH|g"
echo "Adding CDN using '$add_cdn' on $manifest_path"

# -i '' is a mac os quirk
sed -i '' -E "$remove_cdn" $manifest_path
sed -i '' -E "$add_cdn" $manifest_path

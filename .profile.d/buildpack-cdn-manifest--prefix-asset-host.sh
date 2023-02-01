# !/bin/bash
# Add a prefix to all urls in the webpack manifest file,
# this can be run against the same manifest if the WEBPACK_PUBLIC_S3_HOST changes.

manifest_path="$BUILD_DIR/$WEBPACK_PUBLIC_ROOT_PATH/$WEBPACK_PUBLIC_OUTPUT_PATH/manifest.json"

echo "Changing ': \"/$WEBPACK_PUBLIC_OUTPUT_PATH/' to ': \" $WEBPACK_PUBLIC_S3_HOST/$WEBPACK_PUBLIC_OUTPUT_PATH/' in $manifest_path"

# -i '' is a mac os quirk
sed -i '' -E "s|: \".+/$WEBPACK_PUBLIC_OUTPUT_PATH|: \"$WEBPACK_PUBLIC_S3_HOST/$WEBPACK_PUBLIC_OUTPUT_PATH|g" $manifest_path

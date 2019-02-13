#!/usr/bin/env sh
set -e

mkdir -p generated/css generated/js generated/img

npx sass src/sass/keptn_theme.scss keptn_theme.css -s compressed
mv keptn_theme* generated/css
npx uglify-js src/js/misc.js src/js/utils.js src/js/prism.js --mangle --compress -o generated/js/all.min.js --source-map
npx svgstore-cli -o generated/img/icons.svg src/icons/**/*.svg

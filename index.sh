#!/bin/bash

TYPO=$1
VERSION=$2
PACKAGE=$3
URL=$4

# URLWS=$(printf '=%.0s' {1..$(echo "$URL" | wc -m)})
# echo $URLWS
function replace_tags () {
  INPUT=$(tee)
  echo $INPUT
  # INPUT="${"INPUT"/{TYPO}/$TYPO}"
  echo $INPUT
  # -e 's/{TYPO}/'"$TYPO"'/g' \
  # -e 's/{VERSION}/'"$VERSION"'/g' \
  # -e 's/{PACKAGE}/'"$PACKAGE"'/g' \
  # -e 's/{URL}/'"$URL"''/g' \
  # -e 's/{BD}/'"$BD"'/g' \
  # -e 's/{WS}/'"$WS"'/g' \
  # -e 's/{TYPOWS}/'"$TYPOWS"'/g' \
  # -e 's/{PACKAGEWS}/'"$PACKAGEWS"'/g' \
  # -e 's/{URLWS}/'"$URLWS"'/g' < /dev/stdin
}

# read -r -p "Will publish:

# $TYPO@$VERSION » $PACKAGE
# $URL

# Press enter to continue"


TMP=$(mktemp -d)
replace_tags > "$TMP"/package.json < template/package.json
replace_tags > "$TMP"/readme.md < template/readme.md
replace_tags > "$TMP"/redirect-message < template/redirect-message

# open "$TMP"


## cd "$TMP"
## npm publish
## npm deprecate $npm_package_name@"*" "Did you mean '"$PACKAGE"'? {"$URL"}"

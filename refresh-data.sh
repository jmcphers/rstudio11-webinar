#!/usr/bin/env bash

# set parameters
HOST=www.rstudio.org
JSON=downloads.json

# clean up old file
if [ -e $JSON ]; then
  rm $JSON
fi

echo "Downloading data"

wget --quiet https://$HOST/wp-content/$JSON

if [ -e $JSON ]; then
  echo "Download succeeded."
else
  echo "Download failed."
fi


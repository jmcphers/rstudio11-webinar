#!/usr/bin/env bash

# This script fetches a new copy of "downloads.json", which is a JSON file
# containing the location of RStudio product versions and download links.

# set parameters
HOST=www.rstudio.com
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


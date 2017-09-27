#!/usr/bin/env bash

REPO="$1"
DEFAULT_FOLDER="$(echo "$REPO" | sed 's|.*/||' | sed 's|.git$||')"
FOLDER="${2:-$DEFAULT_FOLDER}"

if [ -d "$FOLDER" ]; then
  cd "$FOLDER"
  git pull
else
  git clone "$REPO" "$FOLDER"
fi

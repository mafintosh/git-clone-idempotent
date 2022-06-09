#!/usr/bin/env sh

# Output a message when the argument is missing or empty.
REPO="${1:?Please provide the missing repository argument.}"
# When the second argument is missing or empty,
#  replace it with the output of the shell command.
FOLDER="${2:-$(
# Remove everything before (and also) the last '/' from REPO.
  FOLDER="${REPO##*/}"
# Output the content of FOLDER,
#  after removing '.git' at the end of the content.
  printf "${FOLDER%.git}"
)}"

test -e "${FOLDER?}/.git" &&
# FOLDER contains a .git,
# replace current process with the following:
  exec git -C "${FOLDER?}" pull

# FOLDER did not contain .git,
# so the process has not been replaced,
# replace it with the following:
exec git clone "${REPO?}" "${FOLDER?}"

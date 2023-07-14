#!/bin/sh
set -ex

echo "Attempting to make git commit."

# TODO: figure out how to sign this reasonably
git config --global user.name "papercode ci"
git config --global user.email "matt@questionable.engineering"
git add .

if [ -z "$(git status --porcelain)" ]; then
    echo "Working directory clean, not committing."
else
    git commit -a -m "$COMMIT_MESSAGE"
fi

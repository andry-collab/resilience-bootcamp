#!/usr/bin/env bash
set -e
npx staticrypt _site/index.html "$SITE_PASSWORD" -o _site/index.html -t "Resilience Bootcamp"
for d in labs slides kahootz quizzes resources; do
  if [ -d "_site/$d" ]; then
    find "_site/$d" -name "*.html" -print0 | while IFS= read -r -d '' f; do
      npx staticrypt "$f" "$SITE_PASSWORD" -o "$f" -t "Resilience Bootcamp"
    done
  fi
done

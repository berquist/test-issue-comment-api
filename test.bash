#!/usr/bin/env bash

gh api \
   --method POST \
   -H "Accept: application/vnd.github+json" \
   -H "X-GitHub-Api-Version: 2022-11-28" \
   /repos/berquist/test-issue-comment-api/issues/1/comments \
   -f body='Me too'

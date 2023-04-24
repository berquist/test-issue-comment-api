#!/usr/bin/env bash

set -euo pipefail

BODY="<details>
<summary>136.log</summary>
<pre class=\"notranslate\">
<code class=\"notranslate\">
$(<136.log)
</code>
</pre>
</details>"

gh api \
   --method POST \
   -H "Accept: application/vnd.github+json" \
   -H "X-GitHub-Api-Version: 2022-11-28" \
   /repos/berquist/test-issue-comment-api/issues/1/comments \
   -f body="${BODY}"

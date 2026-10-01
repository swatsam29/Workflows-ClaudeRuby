#!/usr/bin/env bash
# Builds the static site for GitHub Pages: wraps devbench/index.html
# (an artifact-style fragment) in a complete HTML document at _site/index.html.
set -euo pipefail

src="devbench/index.html"
out="_site"
split=$(grep -n -m1 '^<div class="app">' "$src" | cut -d: -f1)

mkdir -p "$out"
{
  echo '<!doctype html>'
  echo '<html lang="en">'
  echo '<head>'
  echo '<meta charset="utf-8">'
  echo '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">'
  echo '<meta name="description" content="Interactive SDLC flow diagram for interview prep: what each tool is, topics to study and interview questions.">'
  echo '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}</style>'
  head -n $((split - 1)) "$src"
  echo '</head>'
  echo '<body>'
  tail -n +"$split" "$src"
  echo '</body>'
  echo '</html>'
} > "$out/index.html"

echo "Built $out/index.html"

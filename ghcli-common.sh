#!/usr/bin/env bash

GH_REST_API_VERSION="X-GitHub-Api-Version: 2022-11-28"
GH_ACCEPT="Accept: application/vnd.github+json"

gh_api() {
  gh api -H "$GH_REST_API_VERSION" -H "$GH_ACCEPT" "$@"
}

compressQuery() {
  printf '%s' "$1" | tr -d '\n'
}

# Because I often just use GH_TOKEN, and don't have 'gh config get user' available.
# This is _weak_ but it will work for my purposes.
gh_whoami() {
	gh auth status -h github.com | grep "Logged in" | sed -e "s/^[[:blank:]]*//" -e "s/[[:blank:]]*$//" | cut -f7 -d ' '
}
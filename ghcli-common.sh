#!/usr/bin/env bash

GH_REST_API_VERSION="X-GitHub-Api-Version: 2022-11-28"
GH_ACCEPT="Accept: application/vnd.github+json"

gh_api() {
  gh api -H "$GH_REST_API_VERSION" -H "$GH_ACCEPT" "$@"
}

internal::compressQuery() {
  echo "$1" | tr -s ' ' | tr -d '\n'
}


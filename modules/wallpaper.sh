#!/usr/bin/env bash

run_wallpaper() {
  local file
  eval file="${1:?}"

  trace "Loading wallpaper $file"
  feh --bg-fill "$file"
}

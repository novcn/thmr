#!/usr/bin/env bash

run_colors() {
  local file
  eval file="${1:?}"

  trace "[colors] Merging file $file"
  xrdb -merge "$file"
}

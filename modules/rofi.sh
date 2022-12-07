#!/usr/bin/env bash

ROFI_CONFIG="$HOME/.config/rofi/config.rasi"
ROFI_PARAMS_CACHE="$HOME/.cache/rofi-params"

run_rofi() {
  local config
  config="${1:?}"

  type=$(jq -r '.type' <<< "$config")
  style=$(jq -r '.style' <<< "$config")

  if [ "$type" != "null" ] && [ "$style" != "null" ]; then
  cat > "$ROFI_PARAMS_CACHE" <<EOF
rofi_type="$type"
rofi_style="$style"
EOF
  else
    warn "[rofi] Did not find type and style. Skipping adding params."
  fi
}

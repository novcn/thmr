#!/usr/bin/env bash

update_values() {
  for key in $(jq -r ".values | keys[]" <<< "$config"); do
    value=$(jq -r ".values[\"$key\"]" <<< "$config")
    trace "[bspwm] Running bspc config $key $value"
    bspc config "$key" "$value"
  done
}

update_refs() {
  for key in $(jq -r ".refs | keys[]" <<< "$config"); do
    ref=$(jq -r ".refs[\"$key\"]" <<< "$config")
    value=$(deref "$ref")
    trace "[bspwm] Derefed ref $ref with value $value"
    trace "[bspwm] Running bspc config $key $value"
    bspc config "$key" "$value"
  done
}

run_bspwm() {
  local config
  config="${1:?}"

  update_values
  update_refs
}

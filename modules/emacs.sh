#!/usr/bin/env bash

run_emacs() {
  local theme
  theme="${1:?}"

  if pgrep emacs >/dev/null; then
    trace "[emacs] Attempting to load theme $theme"
    emacsclient --eval "(load-theme '$theme t)" >/dev/null
  else
    trace "[emacs] Skipping loading emacs theme. Daemon is not running"
  fi
}

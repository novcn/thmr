#!/usr/bin/env bash

run_lemon() {
  if pgrep display >/dev/null; then
    killall -USR1 display
  fi
}

#!/usr/bin/env bash
dump() {
  local M="$1"
  local tstamp="$( tmux show -gqv @TSTAMP)"

  if [[ "$( tmux show -gqv @DEBUG )" == true ]]; then
    local out=$(printf "%s: %s\n" "$( date "$tstamp" )" "$M" ) 
    tmux display -p "${out}" 
  fi
}

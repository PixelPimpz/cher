#!/usr/bin/env bash
dump() {
  local M="$1"
  local O="$2"
  local tstamp="$( tmux show -gqv @TSTAMP)"

  if [[ "$( tmux show -gqv @DEBUG )" == true ]]; then
    local out=$(printf "%s: %s\n" "$( date "$tstamp" )" "$M" ) 
    [[ $O == "-a" ]] && tmux display "${out}" || tmux display -p "${out}"
  fi
}

#!/usr/bin/env bash
yaml2opt()
{
  local filter=$1
  local yaml=$2

  dump ">>> yaml2opt running..." 
  dump ">> filter: $filter"
  dump ">> yaml: $yaml"

  yq eval "${filter} | to_entries[] | (.key + \"=\" + .value)" "$yaml" |
  while IFS="=" read -r key value; do
    tmux set -g "@$key" "$value"
    dump "$(tmux show -g @$key)"
  done
}

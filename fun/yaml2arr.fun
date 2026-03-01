#!/usr/bin/env bash
yaml2arr() 
{
  local yaml="$1"
  local filter="$2"
  local array=()
  ## verify yq binary or fatal()
  [[ ! -x ${YQ} ]] && fatal "unable to read .yaml. No executable for \"yq\" found."
  dump ">> yq executable found."

  # key value pairs to array
  yq eval "${filter} | to_entries[] | (.key + \"=\" + .value)" "$yaml" |
  while IFS="=" read -r key value; do
    array+="${key} ${value}"
    #tmux set -g "@$key" "$value"
    #dump "$(tmux show -g @$key)"
  done
  dump ">> array: ${#array[@]}"
}

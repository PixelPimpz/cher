#!/usr/bin/env bash

if ! $SHARE; then
  SHARE="$( tmux show -gqv @CHER )/lib/share"
  source "$SHARE/dump.fun"
  source "$SHARE/fatal.fun"
fi
YQBIN=/usr/bin/yq

yaml2item()
{
  local filter="$1"
  local yaml="$2"
  [[ ! -x $YQBIN ]] && fatal "ERROR: yq binary not found. check installation, and \$PATH."
  # key value pairs to array
  echo $( yq eval "$filter" "$yaml" )
}


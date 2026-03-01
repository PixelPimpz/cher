#!/usr/bin/env bash
LOCAL_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux set -g @TSTAMP "$( cat $LOCAL_ROOT/lib/timestamp )"
tmux set -g @CHER "$LOCAL_ROOT"
tmux set -g @ICONS "$LOCAL_ROOT/lib/yaml/icons.yaml"
tmux set -g @COLORS "$LOCAL_ROOT/lib/yaml/gruvbox.yaml"
tmux run "$LOCAL_ROOT/scripts/cher.sh"

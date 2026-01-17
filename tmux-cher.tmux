#!/usr/bin/env bash
LOCAL_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux set -g '@LOCAL_ROOT' "$LOCAL_ROOT"

tmux run "$LOCAL_ROOT/scripts/tmux-cher.sh"

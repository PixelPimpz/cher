#!/usr/bin/env bash
LOCAL_ROOT="$( tmux show -gqv @LOCAL_ROOT )"
tmux set -g '@CHER' "$LOCAL_ROOT"
tmux set -u '@LOCAL_ROOT'

#!/usr/bin/env bash

SESSION="karnel"
PROJECT="$HOME/Projects/Karnel"

# Start a new detached tmux session with a window named 'vi'
tmux new-session -d -s "$SESSION" -n vi -c "$PROJECT"

# Send 'vi .' to the 'vi' window
tmux send-keys -t "$SESSION:vi" "vi ." C-m

# Create a second window named 'git'
tmux new-window -t "$SESSION:" -n git -c "$PROJECT"

# Send 'git status' to the 'git' window
tmux send-keys -t "$SESSION:git" "git status" C-m

# Attach to the session
tmux attach-session -t "$SESSION"


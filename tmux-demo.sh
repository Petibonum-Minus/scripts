# name of session
session="Demo"

# kill session if exist
tmux kill-session -t $session
# create new session and stay detached
tmux new-session -s $session -d

# rename first window
tmux rename-window -t $session:1 "Monitor"
# split first pane horizontal, then second pane vertical
tmux split-window -t $session:1.1 -h
tmux split-window -t $session:1.2 -v -l 80%
tmux send-keys -t $session:Monitor.1 "htop" C-m
tmux send-keys -t $session:Monitor.2 "while sleep 1; do clear; ip -br a | column -t; done" C-m
tmux send-keys -t $session:Monitor.3 "ping ping.me" C-m

# create new named window
tmux new-window -t $session -n "Main"
tmux split-window -t $session:Main.1 -h

# attach to session
tmux attach-session -t $session:2.2

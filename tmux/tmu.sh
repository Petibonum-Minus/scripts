#ip 
#!/bin/bash

# IP ?
echo IP ?
read ip

# VPN ,
THM='THM'
HTB='HTB'
echo VPN ? '(THM or HTB, uppercase)'
read vpn

# name of session
session="Pentest"

# kill session if exist
tmux kill-session -t $session
# create new session and stay detached
tmux new-session -s $session -d

# rename first windows
tmux rename-window -t $session:1 "Monitor"
# split first pane horizontal, then second pane vertical
tmux split-window -t $session:1.1 -h
tmux split-window -t $session:1.2 -v -l 70%
tmux split-window -t $session:1.1 -v -l 50%
tmux send-keys -t $session:Monitor.2 "ping $ip" C-m
tmux send-keys -t $session:Monitor.3 "while sleep 1; do clear; ip -br a | grep -v veth ; done" C-m
tmux send-keys -t $session:Monitor.4 "sudo nmap -Pn -sS -T5 $ip" C-m

#VPN choice
if [ "$vpn" -eq "$THM" ]; then
    tmux send-keys -t $session:Monitor.1 "sudo openvpn VPN/petibonum.minus.ovpn" C-m
else
    tmux send-keys -t $session:Monitor.1 "sudo openvpn VPN/lab" C-m
fi

# create new named window
tmux new-window -t $session -n "Main"
tmux split-window -t $session:Main.1 -h

# attach to session
tmux attach-session -t $session:2.2

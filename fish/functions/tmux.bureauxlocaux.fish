function tmux.bureauxlocaux
tmux new-session -d -s "bureauxlocaux" -n "docker" -c "$HOME/Projects/bureauxlocaux"
tmux new-window -c "$HOME/Projects/bureauxlocaux" -n "npm"
tmux new-window -c "$HOME/Projects/bureauxlocaux" -n "shell"
tmux new-window -c "$HOME/Projects/bureauxlocaux" -n "git"
tmux new-window -c "$HOME/Projects/bureauxlocaux" -n "tests"
tmux new-window -c "$HOME/Projects/bureauxlocaux" -n "ssh"
tmux send-keys -t "bureauxlocaux:docker" "docker-compose up -d" Enter
tmux send-keys -t "bureauxlocaux:npm" ". venv/bin/activate.fish" Enter "source .env" Enter "clear" Enter "npm run watch-dev" Enter
tmux send-keys -t "bureauxlocaux:shell" ". venv/bin/activate.fish" Enter "source .env" Enter "code ." Enter "clear" Enter
tmux send-keys -t "bureauxlocaux:git" ". venv/bin/activate.fish" Enter "source .env" Enter "clear" Enter
tmux send-keys -t "bureauxlocaux:tests" ". venv/bin/activate.fish" Enter "source .env" Enter "clear" Enter
tmux send-keys -t "bureauxlocaux:ssh" "ssh bltest" Enter "clear" Enter
tmux select-window -t "bureauxlocaux:shell"
tmux select-pane -t 1
tmux attach-session -t "bureauxlocaux"
end

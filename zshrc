set -o vi

alias vim=nvim
alias neovim="cd ~/.config/nvim && nvim"
alias rcss="cd /home/murat/code/rcss/ && nvim"
alias mia1="ssh u0_a472@192.168.1.17 -p 8022"
alias venv="source .venv/bin/activate"

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# attach to tmux session if exists
if [ -z "$TMUX" ]; then
  # check if there is a session to attach to
  tmux attach 
  if [ $? -eq 1 ]; then
    # if not, create a new session
    tmux 
  fi
fi

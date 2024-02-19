set -o vi

bindkey -s ^f "~/.config/tmux/new-session\n"

alias vim=nvim
alias neovim="cd ~/.config/nvim && nvim"
alias rcss="cd /home/murat/code/rcss/ && nvim"
alias mia1="ssh u0_a472@192.168.1.17 -p 8022"
alias venv="source .venv/bin/activate"
alias venv-init='python3 -m venv .venv && echo  '"'"'{ "exclude": [ ".venv" ], "venvPath": ".", "venv": ".venv"}'"'"' > pyrightconfig.json'

export TMUX_SESSION_NAME='🐺'
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# attach to tmux session if exists
if [ -z "$TMUX" ]; then
  if [[ ! "$TERM_PROGRAM" == "vscode" ]];
  then
    tmux new-session -A -s $TMUX_SESSION_NAME 
  fi
fi

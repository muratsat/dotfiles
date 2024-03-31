set -o vi

bindkey -s ^f "~/.config/tmux/new-session\n"
bindkey '^H' backward-kill-word

alias vim=nvim
alias neovim="cd ~/.config/nvim && nvim"
alias venv="source .venv/bin/activate"
alias venv-init='python3 -m venv .venv'
alias python=python3

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

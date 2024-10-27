set -o vi

bindkey -s ^f "~/.config/tmux/new-session\n"
bindkey '^H' backward-kill-word

alias vim=nvim
alias neovim="cd ~/.config/nvim && nvim"
alias venv="source .venv/bin/activate"
alias venv="if [ ! -d .venv ]; then python3 -m venv .venv; fi; source .venv/bin/activate"
alias python=python3
alias pingy='ssh -p 443 -R0:localhost:3000 -L4300:localhost:4300 qr@a.pinggy.io'
alias c=code


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

rm -rf ~/.config/tmux/
rm -rf ~/.oh-my-zsh
rm -rf ~/.config/nvim 

BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

function log {
  color=$1
  message=$2
  echo -e "${color}${message}${NC}"
}


packages="zsh tmux neovim curl git alacritty"
log $BLUE "Installing dependencies: $packages"
if [ -f /etc/arch-release ]; then
  sudo pacman -S $packages 
elif [ -f /etc/debian_version ]; then
  sudo apt install $packages
else
  log $RED "Unsupported OS"
  exit 1
fi
if [ $? -ne 0 ]; then
  log $RED "Failed to install dependencies"
  exit 1
else
  log $GREEN "Dependencies installed"
fi


log $BLUE "Installing tmux plugin manager"
rm -rf ~/.config/tmux/
mkdir -p ~/.config/tmux/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp tmux.conf ~/.config/tmux/tmux.conf
tmux source ~/.config/tmux/tmux.conf


log $BLUE "Installing nerd font"
mkdir -p ~/.local/share/fonts/
cp ./JetBrainsMonoNerdFont-Regular.ttf ~/.local/share/fonts/
log $GREEN "Installed nerd font"


log $BLUE "Configuring alacritty"
mkdir -p ~/.config/alacritty/
cp alacritty.yml ~/.config/alacritty/alacritty.yml
log $GREEN "Configured alacritty"


log $BLUE "Installing neovim"
git clone https://github.com/muratsat/nvim.git ~/.config/nvim
if [ $? -ne 0 ]; then
  log $RED "Failed to install neovim config"
else
  log $GREEN "Installed neovim"
fi


cp chromium-flags.conf ~/.config/chromium-flags.conf


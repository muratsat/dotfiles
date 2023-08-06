#!/usr/bin/python3

import os


TERM_CONFIG_PATH = '/home/murat/.config/alacritty/alacritty.yml'
NVIM_CONFIG_PATH = '/home/murat/.config/nvim/lua/custom/chadrc.lua'
TMUX_CONFIG_PATH = '/home/murat/.config/tmux/tmux.conf'

DARK_THEME = 'tokyonight'
LIGHT_THEME = 'one_light'

TERM_DARK = f'colors: *{DARK_THEME}'
TERM_LIGHT = f'colors: *{LIGHT_THEME}'

TMUX_DARK = 'set -g status-style "bg=#1a1b26,fg=#FFFFFF"'
TMUX_LIGHT = 'set -g status-style "bg=#fafafa,fg=#383a42"'

NVIM_DARK = f'theme = "{DARK_THEME}",'
NVIM_LIGHT = f'theme = "{LIGHT_THEME}",'

def is_dark(alacritty_config: str) -> bool:
    return alacritty_config.find(TERM_DARK) != -1

def toggle(alacritty_config: str, nvim_config: str, tmux_config: str):
    new_alacritty_config = alacritty_config.replace(TERM_LIGHT, TERM_DARK)
    new_nvim_config = nvim_config.replace(NVIM_LIGHT, NVIM_DARK)
    new_tmux_config = tmux_config.replace(TMUX_LIGHT, TMUX_DARK)

    if is_dark(alacritty_config):
        new_alacritty_config = alacritty_config.replace(TERM_DARK, TERM_LIGHT)
        new_nvim_config = nvim_config.replace(NVIM_DARK, NVIM_LIGHT)
        new_tmux_config = tmux_config.replace(TMUX_DARK, TMUX_LIGHT)

    return new_alacritty_config, new_nvim_config, new_tmux_config

with open(TERM_CONFIG_PATH, 'r') as f:
    term_config = f.read()

with open(NVIM_CONFIG_PATH, 'r') as f:
    nvim_config = f.read()

with open(TMUX_CONFIG_PATH, 'r') as f:
    tmux_config = f.read()

new_term_config, new_nvim_config, new_tmux_config = toggle(term_config, nvim_config, tmux_config)

with open(TERM_CONFIG_PATH, 'w') as f:
    f.write(new_term_config)

with open(NVIM_CONFIG_PATH, 'w') as f:
    f.write(new_nvim_config)

with open(TMUX_CONFIG_PATH, 'w') as f:
    f.write(new_tmux_config)



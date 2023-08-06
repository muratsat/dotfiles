#!/usr/bin/python3

TRANSPARENT = "opacity: 0.85"
OPAQUE = "opacity: 1.0"
CONFIG_FILE = "/home/murat/.config/alacritty/alacritty.yml"

def transparent(file_str: str) -> bool:
    return file_str.find(TRANSPARENT) != -1

def toggle(file_str: str) -> str:
    if transparent(file_str):
        return file_str.replace(TRANSPARENT, OPAQUE)
    else:
        return file_str.replace(OPAQUE, TRANSPARENT)

s = ""
with open(CONFIG_FILE, "r") as f:
    s = f.read()

with open(CONFIG_FILE, "w") as f:
    f.write(toggle(s))


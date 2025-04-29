# Dotfiles

My personal dotfiles for Arch Linux with i3wm setup.

## What's included
- i3 window manager configuration
- Polybar setup
- Picom compositor settings
- Terminal configs (Kitty)
- Neovim configuration
- And more!

## Installation

1. Clone this repository to your home directory:
    -> git clone https://github.com/meaningbread15/mydotfiles.git

2. Install GNU Stow:
    -> for Arch: sudo pacman -S stow
    -> for Debian/Ubuntu/Mint.. etc.: sudo apt install Stow (I don't really know if apt provides stow just go ahead do a google search, sorry)

3. Once installed you can use Stow to create symlinks:
    -> cd ~/mydotfiles
    -> stow i3 polybar picom kitty nvim #etc


Have fun!

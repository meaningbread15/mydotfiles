# Dotfiles

My personal dotfiles for Arch Linux with i3wm setup.
It's not perfect, but it gets everything done and the keybindings are something that I am accustomed to or I have set them up and now have a muscle memory for. The theme here is Catppuccin (Mocha to be specific.. yeah I know how normie!) and that is consistent throughout.

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

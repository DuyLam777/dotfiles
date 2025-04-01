# My dotfiles

This directory contains the dotfiles for my arch linux

## Requirements

Ensure you have the following installed on your system:
- Stow
- Git
- i3
- polybar
- wezterm
- rofi
- nm-applet
- dunst
- feh
- picom
- brightnessctl
- maim
- xclip
- zsh
- exa
- fastfetch
- zoxide
- fzf
- nvim

For zsh plugins to work, clone oh-my-zsh and optionally use the 3 plugins bellow:
- Oh-My-Zsh:

```
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
- Plugins for zsh:

```
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
```
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone https://github.com/DuyLam777/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

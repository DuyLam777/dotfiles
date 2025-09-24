# My dotfiles

This directory contains the dotfiles for my arch linux

## Requirements

Ensure you have the following installed on your system:
- stow
- git
- zsh
- eza
- bat
- fastfetch
- zoxide
- fzf
- nvim
- kitty
- aerospace
---
For zsh plugins to work, clone oh-my-zsh and optionally use the 4 plugins bellow:

- Oh-My-Zsh:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- zsh-completions
```
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
```

- zsh-syntax-highlighting
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
- zsh-autosuggestions

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

- fzf-tab
```
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
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

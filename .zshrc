# Set Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
# Themes will be selected later.
ZSH_THEME="afowler"
# Plugins to load
plugins=(
    git
    sudo
    archlinux
    aws
    kubectl
    kubectx
    command-not-found
    fzf-tab
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Zsh completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Completion styling
zstyle ':completion:' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:' menu no
zstyle ':fzf-tab:complete:cd:' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_no_store
setopt hist_ignore_dups
setopt hist_find_no_dups

# Aliases
alias ls='exa'
alias ll='exa -l'
alias neofetch='fastfetch'
alias vim="nvim"
alias cat="bat"
alias tree="exa --icons -T"
alias srcpy= "source .venv/bin/activate"

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

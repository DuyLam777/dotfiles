# Set Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
# Themes will be selected later.
ZSH_THEME="afowler-user"
# ZSH_THEME="af-magic-no-dash"
# Plugins to load
plugins=(
    git
    sudo
    command-not-found
    brew
    eza
    gitignore
    fzf
    fzf-tab
    zsh-autosuggestions
    zsh-syntax-highlighting

    pip
    docker
    docker-compose
)

# Zsh completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -U compinit && compinit
source "$ZSH/oh-my-zsh.sh"

# Completion styling
zstyle ':completion:' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -1 --color=always $realpath'

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
alias ls='eza'
alias ll='eza -l'
alias neofetch='fastfetch'
alias vim="nvim"
alias cat="bat"
alias tree="eza --icons -T"
alias gcm="git commit -m"
alias icat="kitty +kitten icat"

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Created by `pipx` on 2025-05-12 12:39:33
export PATH="$PATH:/Users/dln/dotfiles/.local/bin"

# PATH for android-sdk
export ANDROID_HOME="/Users/dln/Library/Android/sdk"
export PATH="${PATH}:${ANDROID_HOME}/emulator"
export PATH="${PATH}:${ANDROID_HOME}/tools"
export PATH="${PATH}:${ANDROID_HOME}/tools/bin"
export PATH="${PATH}:${ANDROID_HOME}/platform-tools"

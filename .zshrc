# Joseph Vore's ZSH Configuration
# Based on mathiasbynens dotfiles structure

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="robbyrussell"

# Auto-update behavior
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

# Shell options
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
unsetopt CORRECT
unsetopt CORRECT_ALL

# Which plugins would you like to load?
plugins=(
    git
    zsh-autosuggestions
    alias-finder
    fzf
    autojump
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`
# * ~/.extra can be used for other settings you don't want to commit
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
# Ruby version manager (chruby)
if [[ -f /opt/homebrew/opt/chruby/share/chruby/chruby.sh ]]; then
    source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
    source /opt/homebrew/opt/chruby/share/chruby/auto.sh
    chruby ruby-3.4.4
fi

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nano'
else
    export EDITOR='nano'
fi

# Personal aliases
alias jn="jupyter notebook"
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Starship prompt
if command -v starship > /dev/null 2>&1; then
    STARSHIP_CONFIG=${HOME}/.config/starship.toml
    eval "$(starship init zsh)"
fi

# FZF integration
if command -v fzf > /dev/null 2>&1; then
    source <(fzf --zsh)
fi

# ZSH syntax highlighting
if [[ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Homebrew configuration for Apple Silicon
alias abrew='arch -arm64 /opt/homebrew/bin/brew'
alias rosetta="arch -x86_64 /usr/bin/env /bin/zsh"
alias ibrew='arch -x86_64 /usr/local/bin/brew'

if [ "$(arch)" = "arm64" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    eval "$(/usr/local/bin/brew shellenv)"
fi

# Python aliases
alias python3="/opt/homebrew/bin/python3.11"
alias pip3="/opt/homebrew/bin/pip3.11"

# Zoxide (better cd)
if command -v zoxide > /dev/null 2>&1; then
    eval "$(zoxide init zsh)"
fi

# TheFuck auto-correct
if command -v thefuck > /dev/null 2>&1; then
    eval $(thefuck --alias --enable-experimental-instant-mode)
    command_not_found_handler() {
        export TF_SHELL=zsh
        export TF_ALIAS=fuck
        export TF_HISTORY="$1"

        TF_CMD=$(fuck "$1" --instant 2>/dev/null)

        if [[ -n "$TF_CMD" && "$TF_CMD" != "No fucks given" ]]; then
            echo "→ running: $TF_CMD"
            eval "$TF_CMD"
        else
            echo "zsh: command not found: $1"
            return 127
        fi
    }
fi

# PDM PEP 582 mode
if command -v pdm > /dev/null 2>&1; then
    eval "$(pdm --pep582)"
fi

# Node Version Manager (NVM)
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# 1Password CLI plugins
[ -f "$HOME/.config/op/plugins.sh" ] && source "$HOME/.config/op/plugins.sh"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Claude alias
alias claude="/Users/josephvore/.claude/local/claude"

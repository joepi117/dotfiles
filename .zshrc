#############################################
# Oh My Zsh setup
#############################################
export ZSH="$HOME/.oh-my-zsh"

# Theme (robbyrussell is the classic default; try "agnoster" or "af-magic" too)
ZSH_THEME="robbyrussell"

# Plugins
# - git: git aliases + branch info
# - zsh-autosuggestions: ghost-text suggestions from history
# - zsh-syntax-highlighting: colors valid/invalid commands as you type
#   (must be last in the list)
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

#############################################
# History
#############################################
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY        # append instead of overwrite
setopt SHARE_HISTORY         # share history across sessions
setopt HIST_IGNORE_DUPS      # don't record duplicates back-to-back
setopt HIST_IGNORE_ALL_DUPS  # remove older dupes when a new one is added
setopt HIST_REDUCE_BLANKS    # trim extra whitespace

#############################################
# General options
#############################################
setopt AUTO_CD              # type a dir name to cd into it
setopt CORRECT              # suggest corrections for mistyped commands
setopt INTERACTIVE_COMMENTS # allow # comments in interactive shell

#############################################
# Aliases
#############################################
alias ll="ls -lah"
alias la="ls -A"
alias ..="cd .."
alias ...="cd ../.."
alias grep="grep --color=auto"
alias gs="git status"
alias gc="git commit"
alias gp="git push"

#############################################
# Environment
#############################################
export EDITOR="micro"
export VISUAL="micro"
export LANG="en_US.UTF-8"

# Add common local bin dirs to PATH if they exist
[ -d "$HOME/bin" ] && export PATH="$HOME/bin:$PATH"
[ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"

#############################################
# Autosuggestion styling (optional tweak)
#############################################
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

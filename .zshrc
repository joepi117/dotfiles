# ============================================
#  ~/.zshrc
# ============================================

# --- Oh My Zsh setup ---
export ZSH="$HOME/.oh-my-zsh"

# No built-in theme.
ZSH_THEME=""

# --- Plugins ---
plugins=(git)

source $ZSH/oh-my-zsh.sh

# --- Editor ---
export EDITOR="micro"
export VISUAL="micro"
alias nano="micro"      # fuck nano
alias vim="micro"       # fuck vim too
alias vi="micro"	# fuck vi too

# --- Prompt: clean, bash-style user@host:~/path$ (with git branch indicator) ---
# %n = username, %m = short hostname, %~ = current dir (with ~ shortening), %# = # if root else %
# git_prompt_info comes from the oh-my-zsh "git" plugin loaded above.
setopt PROMPT_SUBST

ZSH_THEME_GIT_PROMPT_PREFIX=" %F{yellow}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*%F{yellow}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%F{green}%n@%m%f:%F{blue}%~%f$(git_prompt_info)%# '

# --- Quality of life ---
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt AUTO_CD              # type a dir name to cd into it
setopt CORRECT              # basic autocorrect for commands

# --- Aliases ---
alias ll="ls -lah"
alias la="ls -A"
alias ..="cd .."
alias ...="cd ../.."
alias grep="grep --color=auto"

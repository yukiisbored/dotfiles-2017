# Yuki's zshrc
# ----------

export ZPLUG_HOME="$HOME/.zplug"

if ! which git > /dev/null 2>&1; then
    echo "Git is not installed. Please install git."
    return
fi

if [ ! -d "$ZPLUG_HOME" ]; then
    echo "Installing zplug ..."
    git clone https://github.com/zplug/zplug "$ZPLUG_HOME"
fi

# General configuration
# ---------------------

export PATH="$HOME/.local/bin:$PATH"
export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python3"

alias dot='git --git-dir=$HOME/.cfg --work-tree=$HOME'

# Zsh configuration
# -----------------

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob notify nomatch

bindkey -e

bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[3~" delete-char
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

# zplug configuration
# -------------------

source "$ZPLUG_HOME/init.zsh"

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/gitfast", from:oh-my-zsh

zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh

zplug "plugins/python", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/virtualenvwrapper", from:oh-my-zsh

zplug "nojhan/liquidprompt"

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"

zplug "willghatch/zsh-cdr"
zplug "zsh-users/zaw"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
	echo; zplug install
    fi
fi

zplug load

# Yuki's zshrc
# ------------

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
export EDITOR="emacsclient -t"

alias dot='git --git-dir=$HOME/.cfg --work-tree=$HOME'

# Emacs rulez!
# ------------

alias e="emacsclient -t"
alias ec="emacsclient -c"
alias vim="emacsclient -t"
alias vi="emacsclient -t"

# Zsh configuration
# -----------------

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob notify nomatch

bindkey -e

bindkey "^[Od" backward-word
bindkey "^[Oc" forward-word
bindkey "^[[3~" delete-char
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

# Portable(tm) Colored ls
# -----------------------

OS=$(uname -o)

case "$OS" in
	"OpenBSD")
		if which colorls >/dev/null 2>&1; then
			alias ls="colorls -G"
		fi
		;;
	"FreeBSD")
		alias ls="ls -G"
		;;
	"Linux")
		alias ls="ls --color"
		;;
	*)
		# Boo, no colored ls :(
		;;
esac

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

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

export GOPATH="$HOME/go"
export PATH="$HOME/.local/bin:$GOPATH/bin:$HOME/.gem/ruby/2.4/bin:$PATH"
export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python3"
export GPG_TTY="$(tty)"

alias dot='git --git-dir=$HOME/.cfg --work-tree=$HOME'

# Emacs rulez!
# ------------

if command -v emacsclient >/dev/null 2>&1; then
    export EDITOR="emacsclient -t"
    alias e="emacsclient -t"
    alias ec="emacsclient -c"
    alias vim="emacsclient -t"
    alias vi="emacsclient -t"
fi

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
bindkey "^H" backward-kill-word
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

# Portable(tm) Colored ls
# -----------------------

OS=$(uname -s)

case "$OS" in
    "OpenBSD")
        if command -v colorls >/dev/null 2>&1; then
            alias ls="colorls -G"
        fi
        ;;
    "FreeBSD")
        alias ls="ls -G"
        ;;
    "DragonFly")
        alias ls="ls -G"
        ;;
    "Linux")
        alias ls="ls --color"
        ;;
    "SunOS")
        # TODO: Proper checks to see if it's GNU
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

# added by travis gem
[ -f /home/yuki/.travis/travis.sh ] && source /home/yuki/.travis/travis.sh

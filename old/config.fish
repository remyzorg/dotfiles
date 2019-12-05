# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish


bind "\cH" backward-kill-path-component



# PATH ##########

set -x OLDPATH $PATH

eval (opam config env --fish)
set -x PATH $PATH $OLDPATH ~/.cabal/bin ~/dev/android-sdk-linux/tools
set -x MANPATH $MANPATH /usr/local/man /usr/local/share/man /usr/share/man



# Alias #########

alias push="git push"
alias st="git status"
alias com="git commit -am"
alias e="emacs"
alias zotero="~/bin/Zotero/zotero"
alias rd="rmdir"



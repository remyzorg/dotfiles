




bind "\cH" backward-kill-path-component



# PATH ##########

set TMPPATH $PATH


eval (opam config env)
set ocaml_env (ocp-manager -config | cut -f 1 -d ";" | cut -f 2 -d "=" | cut -f 2 -d "\"" | tr ":" "\n")
set -x PATH (echo $ocaml_env)

set PATH $PATH $TMPPATH /sbin /usr/sbin
set MANPATH $MANPATH  /usr/share/man



# Alias #########

alias st="git status"
alias com="git commit -am"
alias e="emacs"
alias zotero="~/bin/Zotero/zotero"
alias rd="rmdir"



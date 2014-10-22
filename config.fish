
eval (opam config env)
set ocaml_env (ocp-manager -config | cut -f 1 -d ";" | cut -f 2 -d "=" | cut -f 2 -d "\"" | tr ":" "\n")
set -x PATH (echo $ocaml_env)

bind "\cH" backward-kill-path-component





# Alias

alias st="git status"
alias com="git commit -am"




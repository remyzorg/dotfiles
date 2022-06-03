# Created by newuser for 5.8


[[ ! -r ~/.opam/opam-init/init.zsh ]] || source ~/.opam/opam-init/init.zsh

PATH="~/.npm-packages/bin:$PATH"
export PATH

eval `opam config env`

eval $(keychain --eval --quiet --agents ssh ~/.ssh/id_rsa)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

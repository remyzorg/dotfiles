source ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

set -gx JAVA_HOME /usr/lib/jvm/java-8-openjdk

set -gx ANDROID_SDK_ROOT ~/android-sdk-linux

set -gx PATH ~/.npm-packages/bin $JAVA_HOME /home/remy/android-sdk-linux/tools \
	  ~/android-sdk-linux/build-tools/27.0.3 ~/android-sdk-linux/platform-tools ~/android-sdk-linux/tools/bin ~/.cargo/bin ~/bin $PATH

alias st="git status"
alias gg="git grep"
alias co="git checkout"
alias lg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias sql="make db-psql"

# content has to be in .config/fish/config.fish
# if it does not exist, create the file
setenv SSH_ENV $HOME/.ssh/environment

eval (keychain --eval --quiet --agents ssh ~/.ssh/id_rsa)

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /home/remy/dev/sandbox/isomorphic-rust/minimal/node_modules/tabtab/.completions/electron-forge.fish ]; and . /home/remy/dev/sandbox/isomorphic-rust/minimal/node_modules/tabtab/.completions/electron-forge.fish


set -gx PATH /home/remy/.pyenv/bin $PATH

pyenv init - | source



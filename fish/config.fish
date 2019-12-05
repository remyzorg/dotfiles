eval (opam config env)

set -gx JAVA_HOME /usr/lib/jvm/java-8-openjdk

set -gx ANDROID_SDK_ROOT ~/android-sdk-linux

set -gx PATH ~/.npm-global/bin $JAVA_HOME /home/remy/android-sdk-linux/tools \
	 ~/android-sdk-linux/build-tools/27.0.3 ~/android-sdk-linux/platform-tools ~/android-sdk-linux/tools/bin $PATH


alias st="git status"
alias gg="git grep"
alias co="git checkout"
alias lg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias sql="make db-psql"




function __ssh_agent_is_started -d "check if ssh agent is already started"
  	if begin; test -f $SSH_ENV; and test -z "$SSH_AGENT_PID"; end
		source $SSH_ENV > /dev/null
	end

	if test -z "$SSH_AGENT_PID"
		return 1
	end

	ps -ef | grep $SSH_AGENT_PID | grep -v grep | grep -q ssh-agent
	return $status
end
function __ssh_agent_start -d "start a new ssh agent"
  ssh-agent -c | sed 's/^echo/#echo/' > $SSH_ENV
  chmod 600 $SSH_ENV
  source $SSH_ENV > /dev/null
end

if test -z "$SSH_ENV"
    set -xg SSH_ENV $HOME/.ssh/environment
end

if not __ssh_agent_is_started
    __ssh_agent_start
end

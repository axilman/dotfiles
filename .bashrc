[ -n "$PS1" ] && source ~/.bash_profile;
if test -f $HOME/.gpg-agent-info && \
	    kill -0 `ps aux | grep gpg-agent` 2>/dev/null; then
	eval `cat $HOME/.gpg-agent-info`
else
	eval `gpg-agent --homedir $HOME/.gnupg --daemon --enable-ssh-support -s > $HOME/.gpg-agent-info`
fi

[[ -s ~/.bashrc ]] && source ~/.bashrc

# Setting for the new UTF-8 terminal support in Lion
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

if hash brew 2>/dev/null; then
	if [ -f $(brew --prefix)/etc/bash_completion ]; then
	  . $(brew --prefix)/etc/bash_completion
	fi
fi
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export PATH="$HOME/.cargo/bin:$PATH"

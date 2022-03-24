# for interactive mode only
[[ $- != *i* ]] && return

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'

autoload -Uz compinit
compinit
# End of lines added by compinstall

function kk() {
	ls -al

	if [ "$ZSH_PROMPT_GIT" = yes ]; then
		echo
		git status 2>/dev/null
	fi
}

alias ll='ls -al'
alias ..='cd ..'

export LESS="RS"
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

. "$HOME/.zshtheme"

PROMPT='%F{green}tscafe: %F{blue}%1~%f → %# '

autoload -Uz compinit
compinit

function _makefile_targets {
	local targets
	targets=()
	for mk in makefiles/*.mk Makefile; do
		if [[ -e $mk ]]; then
			targets+=($(grep -oE '^[a-zA-Z0-9_-]+:' $mk | sed 's/://' | tr '\n' ' '))
		fi
	done

	_values 'makefile targets' $targets
}

compdef _makefile_targets make

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

alias cgr='cargo run --release';
alias pip="$(pyenv which pip)"
alias :q="exit";
alias python="$(pyenv which python)"

export GOPATH=~/go
export GOBIN="$GOPATH/bin"
export PATH=$PATH:$GOBIN
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
PYTHONPATH="$PYENV_ROOT/shims:$PYTHONPATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

pro() {
	set -o allexport;
	# shellcheck source=~/go/pro-juice/.env-local
	source ~/go/pro-juice/.env-local;
	set +o allexport;
	source ~/go/pro-juice/cmd/cli/autocomplete/zsh_complete
	pro-juice "$@";
}

less() {
	bat --paging=always --color=always "$@"
}

copy_err(){
	"$@" 2>&1 1>/dev/null | pbcopy
}

fpath=(~/.zsh/completions $fpath)



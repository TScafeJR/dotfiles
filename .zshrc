PROMPT='%F{green}tscafe: %F{blue}%1~%f -> %# '

autoload -Uz compinit
compinit

function _makefile_targets {
    local targets
    targets=()
    # Find makefile targets available in the current directory
    for mk in makefiles/*.mk Makefile; do
        if [[ -e $mk ]]; then
            targets+=($(grep -oE '^[a-zA-Z0-9_-]+:' $mk | sed 's/://' | tr '\n' ' '))
        fi
    done

    # Provide completion suggestions
    _values 'makefile targets' $targets
}

compdef _makefile_targets make

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

alias cgr='cargo run --release';

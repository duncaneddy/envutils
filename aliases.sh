alias cdr='cd ~/repos'
alias cdp='cd ~/presentations'

alias l='exa'
alias la='exa -a'
alias ll='exa -lah'
alias ls='exa --color=auto'

alias j='julia'

alias d='docker'
alias dc='docker-compose'

# If mac os then add alias for tailscale
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
fi

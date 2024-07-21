alias cdr='cd ~/repos'
alias cdp='cd ~/presentations'

alias l='eza'
alias la='eza -a'
alias ll='eza -lah'
alias ls='eza --color=auto'

alias j='julia'

alias d='docker'
alias dc='docker-compose'

# If mac os then add alias for tailscale
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
fi

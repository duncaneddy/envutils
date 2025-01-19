alias cdr='cd ~/repos'

alias l='eza'
alias la='eza -a'
alias ll='eza -lah'
alias ls='eza --color=auto'

alias j='julia'
alias jp='julia --project'

alias d='docker'
alias dc='docker-compose'

# If mac os then add alias for tailscale
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
    alias update='brew update && brew upgrade && rustup update && juliaup update'
fi

# Add alias for uv-latest python pip to pip
alias pip='python -m pip'
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

# Create function "ai-tunnel" that takes in a hostname and creates and ssh tunnel to that host

function ai-tunnel() {
    if [[ -z "$1" ]]; then
        echo "Usage: ai-tunnel <hostname>"
        return 1
    fi

    # Command to execute to create tunnel
    ssh -tTN -L 9999:localhost:8888 deddy@$1
}
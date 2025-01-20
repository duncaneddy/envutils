#!/bin/bash

# Check if curl is installed and save
# Check for curl
if ! command -v curl &> /dev/null
then
    # Install curl on Linux
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "Detected Linux"
        sudo apt-get install curl
    else if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "Detected MacOS"
        brew install curl
    else
        echo "curl could not be found and is not installed on this system"
        exit 1
    fi
fi

# If Macos install brew
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected MacOS"
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Rust
echo "Installing Rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Julia
echo "Installing Julia"
curl -fsSL https://install.julialang.org | sh

# Install Oh-My-Zsh
echo "Installing Oh-My-Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Spaceship Prompt
echo "Installing Spaceship Prompt"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install ZSH Plugins
echo "Installing ZSH Plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install uv
echo "Installing uv"
curl -LsSf https://astral.sh/uv/install.sh | sh

# Configure uv autocomplete
echo "Configuring uv autocomplete"
echo 'eval "$(uv generate-shell-completion zsh)"' >> ~/.zshrc
echo 'eval "$(uvx --generate-shell-completion zsh)"' >> ~/.zshrc

# Install eza
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install eza
else
    cargo install eza
fi

# Install difftastic
cargo install difftastic

# Configure git
cp ./git/gitconfig ~/.gitconfig
cp ./git/gitmessage ~/.gitmessage
cp ./git/gitignore_global ~/.gitignore_global

# Copy config files
cp aliases.sh ~/.aliases.sh
cp zshenv ~/.zshenv
cp zshrc ~/.zshrc
cp aliases ~/.aliases.sh
cp vimrc ~/.vimrc

# envutils

This repository contains utilities and tools for computer and development environment setup. This development environment is just personal preference, and this repository documents the applications used and setup process to make the process faster and more reproducible on future computers.

## Tools

1. [Homebrew (MacOS)](https://brew.sh)
1. [Oh-My-Zsh](https://ohmyz.sh/)
1. [Spaceship Prompt](https://github.com/spaceship-prompt/spaceship-prompt)
1. [Zsh-Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
1. [Zsh Syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
1. Vim configuration
1. Git configuration
1. [Eza](https://github.com/eza-community/eza)
1. [Difftastic](https://difftastic.wilfred.me.uk)
1. [lnav](https://lnav.org/)
1. [Hack Font](https://sourcefoundry.org/hack/)
1. [Amazon Ember Font](https://developer.amazon.com/en-US/alexa/branding/echo-guidelines/identity-guidelines/typography)
1. [Iconsolata Font](https://fonts.google.com/specimen/Inconsolata)
1. [XKCD Font](https://github.com/ipython/xkcd-font/tree/master/xkcd-script/font)
2. [Monaspace Font](https://github.com/githubnext/monaspace#monaspace)

## Other Tools (MacOS)

1. [Alfred](https://alfred.app)
1. [Rectange](https://rectangleapp.com)
1. [Stay](https://cordlessdog.com/stay/)
1. [Stats](https://github.com/exelban/stats)
1. [iTerm2](https://iterm2.com)
1. [VSCode](https://code.visualstudio.com)
1. [Jetbrains App Toolbox](https://www.jetbrains.com/toolbox-app/)
1. [Bartender](https://www.macbartender.com)
1. [Gifox](http://gifox.app)
1. [Texifier](https://www.texifier.com)
1. [Monodraw](https://monodraw.helftone.com/)

## First-Time Computer Setup

Install nvm (node version manager)

```bash
brew install nvm # Be sure to add the recommended lines to your .zshrc
```

Install terminalizer

```bash
npm install -g terminalizer
```

## Quick-Update

To update all shell configurations run the following 

```bash
make all
```

To only update aliases use

```bash
make aliases
```

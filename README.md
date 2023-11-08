# My dotfiles

**IMPORTANT**: Use at your own risk.

## Installation

`yadm clone https://github.com/tomhesse/dotfiles`

**Warning: This will overwrite existing files. Check the yadm
[docs](https://yadm.io/docs/getting_started) for more information**

## Kitty setup

### Kitty Requirements

- None

## Zsh setup

Zsh setup uses [Oh My Zsh](https://ohmyz.sh).

### Zsh Requirements

- [Zsh](https://www.zsh.org) (Version 5.0.8 and newer is prefered)
- [curl](https://curl.se) - Required to setup Oh My Zsh
- [Git](https://git-scm.com) - Required to setup Oh My Zsh

## Neovim setup

Neovim will automatically bootstrap
[lazy.nvim](https://github.com/folke/lazy.nvim) and install the configured
plugins, language servers, linters and formatters.

### Neovim Requirements

- [Neovim](https://neovim.io) (Version 0.8 or later)
- [Nerd Font](https://www.nerdfonts.com) - For nvim-web-devicons
- [Git](https://git-scm.com) - To bootstrap lazy.nvim
- [ripgrep](https://github.com/BurnSushi/ripgrep) - For Telescope Fuzzy Finder
- [curl](https://curl.se) - Requirement of mason
- [unzip](https://infozip.sourceforge.net/UnZip.html) - Requirement of mason
- [tar](https://www.gnu.org/software/tar) - Requirement of mason
- [gzip](https://www.gnu.org/software/gzip) - Requirement of mason
- [luarocks](https://luarocks.org) - Required by mason to install packages
- [npm](https://npmjs.com) - Required by mason to install packages
- [shellcheck](https://www.shellcheck.net) - Required by bashls for linting

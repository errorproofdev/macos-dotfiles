# Joseph Vore's dotfiles

![Banner](https://i.imgur.com/EkEtphC.png)

Personal dotfiles for macOS, based on the excellent [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles) with customizations for modern development workflow.

## Features

- **ZSH configuration** with Oh My Zsh, Starship prompt, and useful plugins
- **Modern development tools** via Homebrew installation script
- **Git configuration** with useful aliases and macOS integration
- **Comprehensive aliases** for productivity
- **macOS system defaults** for a better experience
- **Modular structure** for easy customization

## Installation

**Warning:** Review the code before running. These are my personal settings.

### Quick install with Git

```bash
git clone https://github.com/errorproofdev/dotfiles.git ~/CODE/dotfiles && cd ~/CODE/dotfiles && source bootstrap.sh
```

### Create the symlink

```bash
ln -sf ~/CODE/dotfiles ~/dotfiles
```

### Install development tools

```bash
./brew.sh
```

### Apply macOS defaults

```bash
./.macos
```

## What's included

### Shell Configuration

- `.zshrc` - ZSH configuration with Oh My Zsh integration
- `.aliases` - Useful command aliases
- `.functions` - Handy shell functions
- `.exports` - Environment variable exports
- `.extra` - Private configurations (not tracked)

### Development Tools

- Git with comprehensive aliases and configuration
- Modern CLI tools (fzf, ripgrep, bat, etc.)
- Programming languages (Node.js, Python, Ruby, Go)
- Package managers (npm, pip, gem, etc.)

### GUI Applications

- Visual Studio Code
- Docker Desktop
- Browsers (Chrome, Firefox)
- iTerm2 terminal
- Sourcetree Git client
- Rectangle window manager

## Customization

### Private settings

Create a `~/.extra` file for settings you don't want to commit:

```bash
# Git credentials
GIT_AUTHOR_NAME="Your Name"
GIT_AUTHOR_EMAIL="you@example.com"

# Custom aliases
alias work="cd ~/Projects/work"

# Environment variables
export API_KEY="your-secret-key"
```

### Additional PATH

Create a `~/.path` file to extend your PATH:

```bash
export PATH="/custom/path:$PATH"
```

## Organization

```
~/CODE/dotfiles/           # Main repository
├── .aliases               # Shell aliases
├── .bash_profile         # Bash profile
├── .exports              # Environment exports
├── .functions            # Shell functions
├── .gitconfig            # Git configuration
├── .macos                # macOS system defaults
├── .zshrc                # ZSH configuration
├── bootstrap.sh          # Installation script
└── brew.sh               # Homebrew packages
```

## Thanks

- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) for the excellent foundation
- [Oh My Zsh](https://ohmyz.sh/) community
- [Homebrew](https://brew.sh/) maintainers

## License

MIT

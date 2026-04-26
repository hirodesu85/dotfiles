# dotfiles

My personal dotfiles for macOS, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

Prerequisites: [Homebrew](https://brew.sh/)

```bash
brew install stow git

git clone https://github.com/hirodesu85/dotfiles.git ~/dotfiles
cd ~/dotfiles

stow git
```

## Packages

| Package | Description |
|---------|-------------|
| `git/`  | `.gitconfig`, `.gitignore_global` |

## Usage

Add a new package:

```bash
cd ~/dotfiles
mkdir <package>
mv ~/<dotfile> <package>/<dotfile>
stow <package>
```

Remove symlinks:

```bash
cd ~/dotfiles
stow -D <package>
```

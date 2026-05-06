# dotfiles

My personal dotfiles for macOS, managed with [GNU Stow](https://www.gnu.org/software/stow/) and following the [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).

## Setup

Prerequisites: [Homebrew](https://brew.sh/)

```bash
brew install stow git
git clone https://github.com/hirodesu85/dotfiles.git ~/dotfiles
cd ~/dotfiles
brew bundle
stow */
```


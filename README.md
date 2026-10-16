# dotfiles

My personal dotfiles for macOS, managed with [Home Manager](https://github.com/nix-community/home-manager) (Nix flakes) and following the [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).

- CLI tools and config files: Home Manager (`home-manager/`)
- GUI apps (casks): Homebrew (`Brewfile`)
- AI agent instructions: `home-manager/ai/AGENTS.md` (linked to `~/.claude/CLAUDE.md` and `~/.codex/AGENTS.md`)

## Setup

Prerequisites: [Homebrew](https://brew.sh/), [Nix](https://nixos.org/download/) with flakes enabled

```bash
git clone https://github.com/hirodesu85/dotfiles.git
cd dotfiles
brew bundle
nix run home-manager/master -- switch --flake .
```

## Apply changes

```bash
home-manager switch --flake .
```

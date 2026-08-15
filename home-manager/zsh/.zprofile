# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Home Managerが作成した環境変数を利用可能にするため
. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"


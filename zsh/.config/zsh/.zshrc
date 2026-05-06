# ============================================================
# History (XDG state)
# ============================================================
export HISTFILE="$XDG_STATE_HOME/zsh/history"

# ============================================================
# Zsh plugins
# ============================================================
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ============================================================
# Tools
# ============================================================
eval "$(atuin init zsh)"
eval "$(mise activate zsh)"
eval "$(starship init zsh)"

# ============================================================
# Aliases
# ============================================================
alias cat='bat'
alias ls='lsd'


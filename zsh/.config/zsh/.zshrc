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
# Prompt (Pure)
# ============================================================
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# ============================================================
# Tools
# ============================================================
eval "$(atuin init zsh)"
eval "$(mise activate zsh)"

# ============================================================
# Aliases
# ============================================================
alias cat='bat'
alias ls='lsd'


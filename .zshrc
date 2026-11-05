
# ── Oh My Zsh ────────────────────────────────────────────
export ZSH="$HOME/.oh-my-zsh"

# Desativa o tema padrão (utilizamos Starship)
ZSH_THEME=""

plugins=(
  git
  docker
  docker-compose
  node
  npm
  gradle
  zsh-autosuggestions
  fast-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"


# ── fzf ──────────────────────────────────────────────────
export FZF_DEFAULT_COMMAND='fd --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'

# Atalhos: Ctrl+T, Alt+C e Ctrl+R
source <(fzf --zsh)


# ── fzf-tab ──────────────────────────────────────────────
# Carregado diretamente pelo Homebrew, sem Oh My Zsh
source "$(brew --prefix fzf-tab)/share/fzf-tab/fzf-tab.zsh"

zstyle ':fzf-tab:*' fzf-flags --height=80% --layout=reverse

zstyle ':fzf-tab:*' continuous-trigger '/'

# Preview de arquivos e diretórios
zstyle ':fzf-tab:complete:*' fzf-preview '
  if [[ -d "$realpath" ]]; then
    eza --tree --icons=always --color=always --all -- "$realpath"
  else
    bat --color=always -- "$realpath" 2>/dev/null
  fi
'


# ── Aliases ──────────────────────────────────────────────
alias ls="eza --icons=always"
alias lsa="eza -a --icons=always"
alias ll="eza -l --icons=always"
alias la="eza -la --icons=always"
alias lt="eza --tree --icons=always"

alias dow="cd ~/Downloads"
alias hm="cd ~"
alias cl="clear"


# ── bat ──────────────────────────────────────────────────
alias cat="bat --paging=never --style=plain"
alias diff="bat --diff --style=plain"


# ── AWS Completion ───────────────────────────────────────
if [[ -x /usr/local/bin/aws_completer ]]; then
  autoload -Uz bashcompinit
  bashcompinit
  complete -C '/usr/local/bin/aws_completer' aws
fi


# ── SDKMAN ───────────────────────────────────────────────
export SDKMAN_DIR="$HOME/.sdkman"

[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && \
  source "$SDKMAN_DIR/bin/sdkman-init.sh"


# ── NVM ──────────────────────────────────────────────────
export NVM_DIR="$HOME/.nvm"

[[ -s "/opt/homebrew/opt/nvm/nvm.sh" ]] && \
  source "/opt/homebrew/opt/nvm/nvm.sh"

[[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ]] && \
  source "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"


# ── Starship ─────────────────────────────────────────────
eval "$(starship init zsh)"

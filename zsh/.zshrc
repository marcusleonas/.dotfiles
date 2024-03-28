for config (~/.zsh/*.zsh) source $config
# bun completions
[ -s "/Users/marcus/.bun/_bun" ] && source "/Users/marcus/.bun/_bun"

# pnpm
export PNPM_HOME="/Users/marcus/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


# Herd injected NVM configuration
export NVM_DIR="/Users/marcus/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/marcus/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/marcus/Library/Application Support/Herd/bin/":$PATH


# Load Angular CLI autocompletion.
source <(ng completion script)

# Load Starship
eval "$(starship init zsh)"
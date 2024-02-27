for config (~/.zsh/*.zsh) source $config
# bun completions
[ -s "/Users/marcus/.bun/_bun" ] && source "/Users/marcus/.bun/_bun"

# pnpm
export PNPM_HOME="/Users/marcus/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

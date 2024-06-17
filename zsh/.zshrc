# pnpm
export PNPM_HOME="/Users/marcus/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export NVM_DIR="$HOME/.nvm"

export GPG_TTY=$(tty)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/ruby/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fnm
export PATH="/Users/marcus/Library/Application Support/fnm:$PATH"
eval "`fnm env`"

export PATH="/Users/marcus/go/bin:$PATH"

eval "$(fnm env --use-on-cd)"

eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/base.toml)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

for file in ~/.zsh/*.zsh; source $file

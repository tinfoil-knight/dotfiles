# For kubectl autocompletion
# See https://kubernetes.io/docs/tasks/tools/install-kubectl-macos/#enable-shell-autocompletion
autoload -Uz compinit
compinit

# Enabling and setting git info var to be used in prompt config
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
# This line obtains information from the vcs.
zstyle ':vcs_info:git*' formats "(%b)"
precmd() {
    vcs_info
}

# Enable substitution in the prompt
setopt prompt_subst

# https://robotmoon.com/256-colors/
PROMPT='%F{250}%1~%f %F{029}${vcs_info_msg_0_}%f $ '

export CLICOLOR=1

HISTSIZE=SAVEHIST=20000

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm

# homebrew
export HOMEBREW_NO_AUTO_UPDATE=1

# shell autocompletions
source <(kubectl completion zsh)

# iterm tab title
DISABLE_AUTO_TITLE="true"
precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}

# for tools installed using go
export PATH=$PATH:$(go env GOPATH)/bin
# for putting python@3.10 before python@3.9 in path
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
# postgres
export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"

# Haskell
[ -f "/Users/kunal/.ghcup/env" ] && source "/Users/kunal/.ghcup/env" # ghcup-env

source /Users/kunal/.config/broot/launcher/bash/br

# zsh plugin: https://github.com/zsh-users/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# bun completions
[ -s "/Users/kunal/.bun/_bun" ] && source "/Users/kunal/.bun/_bun"

# zoxide
eval "$(zoxide init zsh)"

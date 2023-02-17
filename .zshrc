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
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# for tools installed using go
export PATH=$PATH:$(go env GOPATH)/bin

# for putting python@3.10 before python@3.9 in path
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"ƒ
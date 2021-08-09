# prompt
PS1='\W\$ '

# enable colored ls output
export CLICOLOR=1

# display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on"

# load aliases
[ -f $HOME/.bash_alias ] && . $HOME/.bash_alias

# haskell
export PATH=~/.local/bin:$PATH
export PATH=$PATH:~/.local/bin:~/.ghcup/bin:~/.cabal/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


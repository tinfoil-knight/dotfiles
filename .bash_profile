# Bash Prompt
PS1='\W\$ '

# Haskell
export PATH=~/.local/bin:$PATH

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# enable colored ls output
export CLICOLOR=1

# Custom Alias
alias air='~/go/bin/air'
alias activate='source venv/bin/activate'
alias la='ls -lAh'
alias mgo='brew services run mongodb-community'
alias hepl='stack ghci'
alias docs='npx redoc-cli serve open-api.yaml --watch'
alias rst='tput reset'

alias '..'='cd ..' 
alias '...'='cd ../..'
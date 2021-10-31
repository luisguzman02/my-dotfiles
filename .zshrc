
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
source /usr/local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias l='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long'
alias BOC="cd ~/Documents/tangosource/BOC"
alias updatez="source ~/.zshrc"
alias new-react-tutorial="cd ~/Projects/React-For-Beginners-Starter-Files/catch-of-the-day"
alias ctags="`brew --prefix`/bin/ctags"

export JAVA_HOME=`/usr/libexec/java_home -V 1.8.0_191`
export PATH="/usr/local/sbin:$PATH"

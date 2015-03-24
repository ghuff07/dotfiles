export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

export ANDROID_HOME=/usr/local/opt/android-sdk

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
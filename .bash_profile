# Add Homebrew `/usr/local/sbin` and User `~/bin` to the `$PATH`
PATH=/usr/local/sbin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# exports
export EDITOR='code -w'
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export ANDROID_NDK_HOME=/usr/local/share/android-ndk
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
export HOMEBREW_GITHUB_API_TOKEN=

# dircolors from GNU coreutils
if [ -x /usr/local/bin/gdircolors ]; then
  test -e ~/.dircolors && eval "$(gdircolors -b ~/.dircolors)"
fi

# completion for bash 4.1+
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# homebrew command not found
if brew command command-not-found-init >/dev/null 2>&1; then eval "$(brew command-not-found-init)"; fi

# iTerm shell integration
source ~/.iterm2_shell_integration.bash

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

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
export EDITOR='subl -w'
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=/usr/local/opt/python@2/libexec/bin:$PATH
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export ANDROID_NDK_HOME=/usr/local/share/android-ndk
export HOMEBREW_GITHUB_API_TOKEN=

# dircolors from GNU coreutils
if [ -x /usr/local/bin/gdircolors ]; then
  test -e ~/.dircolors && eval "$(gdircolors -b ~/.dircolors)"
fi

# completion for bash 4.1+
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
    . /usr/local/share/bash-completion/bash_completion
fi

# added by ST3 - sublime text shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# added by RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

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

export ANDROID_HOME=/usr/local/opt/android-sdk
export HOMEBREW_GITHUB_API_TOKEN=

if [ -x /usr/local/bin/gdircolors ]; then
  test -e ~/.dircolors && eval "$(gdircolors -b ~/.dircolors)"
fi

if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
    . $(brew --prefix)/share/bash-completion/bash_completion
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

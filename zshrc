# Addinging my own binaries to my path
export PATH="$PATH:/Users/indy/bin"

# Find homebrew binaries
eval "$(/opt/homebrew/bin/brew shellenv)"

### zsh shell completion for subcommands of brew
# For now, before I install oh-my-zsh

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
fi

## The above  must be done before compinit is called. Note that if you are using
## Oh My Zsh, it will call compinit for you when you source oh-my-zsh.sh. In
## this case, instead of the above, add the following line to your ~/.zshrc,
## before you source oh-my-zsh.sh:
#
#FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

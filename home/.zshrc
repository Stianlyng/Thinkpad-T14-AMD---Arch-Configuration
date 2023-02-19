# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/stian/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"

# ALIASES
alias r='ranger'
alias c='cd ~/.config && r'

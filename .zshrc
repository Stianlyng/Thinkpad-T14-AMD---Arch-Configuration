
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate

export EDITOR="vim"

zstyle :compinstall filename '/home/stian/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install


# Initialize Startship prompt

eval "$(starship init zsh)"

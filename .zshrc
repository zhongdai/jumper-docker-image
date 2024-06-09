# Set up prompt
PROMPT='%F{green}%n@%m%f %F{blue}%~%f %# '

# Enable command auto-completion
autoload -Uz compinit
compinit

# Enable syntax highlighting if zsh-syntax-highlighting is installed
# source /path/to/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
alias ll='ls -la'
alias vi='nvim'
alias k='kubectl'

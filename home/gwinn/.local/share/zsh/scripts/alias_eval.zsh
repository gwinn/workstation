alias cat='bat'
alias less='bat'
alias cd='z'
alias cp='cp -r'
alias delta='delta -s --hyperlinks --diff-so-fancy'
alias rm='rm -rf'
alias ls='ls -lash --color=always'
alias ll='eza -AlhogUm --color=always --icons=always --no-permissions --group-directories-first'
alias la='ls -A --color=always'
alias l='ls -CF --color=always'
alias ssh='kitty +kitten ssh'
alias vim='nvim'
alias n='nvim'
alias wget='wget --hsts-file=~/.cache/wget-hsts'

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(rbenv init -)"


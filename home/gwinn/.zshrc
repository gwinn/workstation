printf '\33c\e[3J'

HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTDUP=erase
SHELL_SESSIONS_DISABLE=1

if type brew &>/dev/null; then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

fpath=(~/.local/share/zsh/completions $fpath)
fpath=(~/.docker/completions $fpath)
fpath=(~/.local/share/zsh/functions $fpath)

autoload -Uz compinit promptinit vcs_info git_info ssh_info colors && colors
#autoload -U +X bashcompinit && bashcompinit
promptinit

setopt appendhistory autocd notify prompt_subst
setopt share_history hist_verify
setopt hist_expire_dups_first hist_ignore_all_dups hist_save_no_dups hist_ignore_dups hist_find_no_dups hist_ignore_space

bindkey -e
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# Use ❯ as the non-root prompt character; # for root
# Change the prompt character color if the last command had a nonzero exit code
PS1='
$(ssh_info)%{$fg[magenta]%}%~%u $(git_info)
%(?.%{$fg[blue]%}.%{$fg[red]%})%(!.#.❯)%{$reset_color%} '


. ~/.profile

. ~/.local/share/zsh/scripts/alias_eval.zsh
. ~/.local/share/zsh/scripts/fzf-tab/fzf-tab.plugin.zsh
. ~/.local/share/zsh/scripts/catppuccin_macchiato-zsh-syntax-highlighting.zsh

if type brew &>/dev/null; then
    . $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    . $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

compinit -d ~/.cache/zsh/zcompdump


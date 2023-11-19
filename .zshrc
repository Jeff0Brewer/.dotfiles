PROMPT='%B%F{13}[%n%b@%m%B %~]$%F{15}%b '
LS_COLORS='di=35:ln=34:so=31:pi=33:ex=32:*.css=36:*.h=36' && export LS_COLORS

export FZF_DEFAULT_COMMAND='rg --files --hidden'

alias python='python3'
alias vim='nvim'
alias ls='exa --sort=type --color=never'
alias lt='exa -T --sort=type --color=always'
alias ltm='exa -T --sort=type --color=always -I "node_modules|.git|target"'
alias :q='exit'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# swap filenames
swap() {
    local tmpfile=$(mktemp)
    mv "$1" "$tmpfile"
    mv "$2" "$1"
    mv "$tmpfile" "$2"
}

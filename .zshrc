PROMPT='%B%F{13}[%n%b@%m%B %~]$%F{15}%b '
LS_COLORS='di=35:ln=34:so=31:pi=33:ex=32:*.css=36:*.h=36:*.glsl=33' && export LS_COLORS
alias python="python3"
alias vim='nvim'
alias ls='exa --sort=type --color=never'   
alias lt='exa -T --sort=type --color=always'
alias ltn='exa -T --sort=type --color=always -I node_modules'
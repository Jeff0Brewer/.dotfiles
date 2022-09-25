call plug#begin()

Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown', 'on': 'MarkdownPreview' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'dense-analysis/ale'

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

call plug#end()

let g:ale_completion_enabled = 1

let g:ale_fixers = {
\    '*': ['remove_trailing_lines', 'trim_whitespace'],
\    'javascript': ['eslint'],
\    'jsx': ['eslint']
\}
let g:ale_fix_on_save = 1

let g:chadtree_settings = { 'theme': { 'icon_glyph_set': 'ascii' } }

command Df ALEGoToDefinition
command T CHADopen
command Md MarkdownPreview

map <esc> :noh <CR>

set number
set relativenumber
hi LineNr ctermfg=254 cterm=bold
hi NonText ctermfg=236

hi StatusLine ctermfg=236 ctermbg=15
hi StatusLineNC ctermfg=233 ctermbg=7
hi VertSplit ctermfg=236 ctermbg=236

hi Pmenu ctermfg=15 ctermbg=236
hi Search ctermfg=0 ctermbg=226

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

lua require('init')

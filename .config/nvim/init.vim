call plug#begin()

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown', 'on': 'MarkdownPreview' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

call plug#end()

let g:coq_settings = { 'display.icons.mode': 'none' }
let g:chadtree_settings = { 'theme': { 'icon_glyph_set': 'ascii' } }

command T CHADopen
command Md MarkdownPreview

map <esc> :noh <CR>

set number 
hi LineNr ctermfg=254 cterm=bold
hi NonText ctermfg=236

hi StatusLine ctermfg=236 ctermbg=15
hi StatusLineNC ctermfg=233 ctermbg=7
hi VertSplit ctermfg=236 ctermbg=236

hi Pmenu ctermfg=15 ctermbg=236
hi Search ctermfg=0 ctermbg=226

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab 

autocmd VimEnter * COQnow -s 

lua require('init')

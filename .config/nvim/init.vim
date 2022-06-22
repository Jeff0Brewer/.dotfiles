call plug#begin()

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown', 'on': 'MarkdownPreview' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

call plug#end()

let g:coq_settings = { 'display.icons.mode': 'none' }
autocmd VimEnter * COQnow -s 

let g:chadtree_settings = { 'theme.icon_glyph_set': 'ascii' }
map <C-b> :CHADopen <CR>

set number 
hi LineNr ctermfg=13 cterm=bold 
hi NonText ctermfg=13
hi StatusLine ctermfg=236 ctermbg=15
hi Pmenu ctermfg=15 ctermbg=236 
hi Search ctermfg=15 ctermbg=13
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab 
map <esc> :noh <CR>

lua require('init')

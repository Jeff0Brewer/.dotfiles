call plug#begin()

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown', 'on': 'MarkdownPreview' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

autocmd VimEnter * COQnow -s 

set number 
hi LineNr ctermfg=13 cterm=bold 
hi NonText ctermfg=13
hi StatusLine ctermfg=236 ctermbg=15
hi Pmenu ctermbg=236 ctermfg=15
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab 
map <esc> :noh <CR>

lua require('init')

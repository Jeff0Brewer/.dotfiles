call plug#begin()

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'dense-analysis/ale'

Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown', 'on': 'MarkdownPreview' }

Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }

call plug#end()

let g:ale_fixers = {
\    '*': ['remove_trailing_lines', 'trim_whitespace'],
\    'javascript': ['eslint'],
\    'javascriptreact': ['eslint'],
\    'typescript': ['eslint'],
\    'typescriptreact': ['eslint']
\}
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1

command Df ALEGoToDefinition
command E FZF
command Md MarkdownPreview

map <esc> :noh <CR>

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set number
set relativenumber

set termguicolors
colorscheme moonfly

lua require('init')

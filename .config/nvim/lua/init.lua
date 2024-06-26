require('nvim-treesitter.configs').setup({
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = false
    }
})

require('oil').setup({
    default_file_explorer = false,
})

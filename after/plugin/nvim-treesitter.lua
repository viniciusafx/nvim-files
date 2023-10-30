require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'css',
        'dockerfile',
        'html',
        'javascript',
        'json',
        'lua',
        'rust',
        'scss',
        'sql',
        'typescript',
        'vim',
        'vimdoc',
        'xml',
        'yaml',
    },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

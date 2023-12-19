require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'css',
        'dockerfile',
        'html',
        'javascript',
        'json',
        'lua',
        'markdown',
        'rust',
        'scss',
        'sql',
        'typescript',
        'tsx',
        'vim',
        'vimdoc',
        'xml',
        'yaml',
    },

    sync_install = false,
    auto_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    autotag = {
        enable = true,
    },
}

vim.g.vsnip_snippet_dir = vim.fn['stdpath']('config') .. '/snippets'

vim.keymap.set('i', '<C-j>', function()
    return (vim.fn['vsnip#expandable']() == 1) and '<Plug>(vsnip-expand)' or '<C-j>'
end, { expr = true, })

vim.keymap.set('i', '<C-l>', function()
    return (vim.fn['vsnip#available'](1) == 1) and '<Plug>(vsnip-expand-or-jump)' or '<C-l>'
end, { expr = true, })

vim.keymap.set('i', '<Tab>', function()
    return (vim.fn['vsnip#jumpable'](1) == 1) and '<Plug>(vsnip-jump-next)' or '<Tab>'
end, { expr = true, })

vim.keymap.set('i', '<S-Tab>', function()
    return (vim.fn['vsnip#jumpable'](-1) == 1) and '<Plug>(vsnip-jump-prev)' or '<S-Tab>'
end, { expr = true, })

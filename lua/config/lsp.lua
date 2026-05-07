require('mason').setup()

require('mason-tool-installer').setup({
    ensure_installed = {
        'lua_ls',
        'gopls',
        'ts_ls',
        'jsonls',
        'bashls',
        'stylua',
        'prettier',
        'shfmt',
        'pyright'
    },
})

vim.lsp.config['lua_ls'] = {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = {
                    'vim'
                }
            }
        }
    }
}

require('mason-lspconfig').setup({
    automatic_enable = true,
})

vim.diagnostic.config({
    virtual_text = true,
})

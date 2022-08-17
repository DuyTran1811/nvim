local startus, nullls = pcall(require, "null-ls")
if (not startus) then return end

nullls.setup({
    vim.lsp.buf.format({ timeout_ms = 2000 }),
    vim.cmd("map <Leader>lf :lua vim.lsp.buf.formatting_sync(nil, 2000)<CR>"),
})

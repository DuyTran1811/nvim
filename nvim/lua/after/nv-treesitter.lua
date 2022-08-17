local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup({
    ensure_installed = {
        "rust",
        "c",
        "lua",
        "json",
    },
    indent = {
        enable = true,
    },
    highlight = {
        enable = true,
        use_languagetree = true,
        additional_vim_regex_highlighting = false,
    },
})

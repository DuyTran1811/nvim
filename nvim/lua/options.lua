local options = {
    backup = false,
    hidden = true,
    hlsearch = false,
    incsearch = true,
    showtabline = 4,
    updatetime = 300,
    timeoutlen = 500,
    mouse = "a",
    cmdheight = 2,
    scrolloff = 5,
    writebackup = false,
    shiftwidth = 4,
    softtabstop = 4,
    expandtab = true,
    linebreak = true,
    cursorline = true,
    number = true,
    relativenumber = true,
    signcolumn = "yes",
    colorcolumn = "80",
    tabstop = 4,
    autoindent = true,
    clipboard = "unnamedplus",
    shadafile = "NONE",
    shada = "",
}

local disable = {
    loaded_man = false,
    loaded_gzip = false,
    loaded_netrwPlugin = false,
    loaded_tarPlugin = false,
    loaded_zipPlugin = false,
    loaded_2html_plugin = false,
    loaded_remote_plugin = false,
    loaded_netrw = false,
    loaded_netrwSettings = false,
    loaded_netrwFileHandlers = false,
    loaded_zip = false,
    loaded_tar = false,
    loaded_getscript = false,
    loaded_getscriptPlugin = false,
    loaded_vimball = false,
    loaded_vimbaillPlugin = false,
    loaded_logipat = false,
    loaded_rrhelper = false,
    loaded_spellfile_plugin = false,
    loaded_mathchit = false,
}

for e, a in pairs(options) do
    vim.opt[e] = a
end

for i, v in pairs(disable) do
    vim.g[i] = v
end

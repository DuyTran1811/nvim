local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
end

return require("packer").startup(function(use)
    use({ "wbthomason/packer.nvim" })
    -- Theme Gruvbox
    use({ "ellisonleao/gruvbox.nvim" })
    -- Theme NightFox
    use({ "EdenEast/nightfox.nvim" })
    -- Nvim-Tree
    use({ "kyazdani42/nvim-tree.lua", tag = "nightly" })
    use({ "kyazdani42/nvim-web-devicons" })
    -- Nvim-autopairs
    use({ "windwp/nvim-autopairs" })
    -- Gitsigns --
    use({ "lewis6991/gitsigns.nvim" })
    -- Telescope
    use({ "nvim-telescope/telescope.nvim" })
    -- Bufferline
    use({ "akinsho/bufferline.nvim", tag = "v2.*" })
    -- Scrolling
    use({ "karb94/neoscroll.nvim" })
    -- Comment
    use({ "numToStr/Comment.nvim" })
    -- Toggleterm
    use({
        "akinsho/toggleterm.nvim",
        tag = "v2.*",
        config = function()
            require("toggleterm").setup()
        end,
    })
    -- Tree Sitter
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use({ "nvim-treesitter/nvim-treesitter-textobjects" })
    use({ "nvim-treesitter/playground" })
    -- LspConfig --
    use({ "neovim/nvim-lspconfig" })
    -- Lua Line --
    use({ "hoob3rt/lualine.nvim" })
    -- Formatter --
    use({ "mhartington/formatter.nvim" })
    -- Indent --
    use({ "lukas-reineke/indent-blankline.nvim" })
    -- Completion --
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/nvim-cmp")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    -- Rust Tool --
    use("simrat39/rust-tools.nvim")
    use("nvim-lua/plenary.nvim")
    -- Nvim-Dap --
    use("mfussenegger/nvim-dap")
    use("theHamsta/nvim-dap-virtual-text")
    use("rcarriga/nvim-dap-ui")
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

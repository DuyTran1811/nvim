local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- NvimTree --
keymap("n", "<F2>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>r", ":NvimTreeRefresh<CR>", opts)
keymap("n", "<leader>n", ":NvimTreeFindFile<CR>", opts)

-- Telescope --
keymap("n", "ff", ":Telescope find_files<CR>", opts)
keymap("n", "fg", ":Telescope live_grep<CR>", opts)
keymap("n", "fb", ":Telescope buffers<CR>", opts)
keymap("n", "fh", ":Telescope help_tags<CR>", opts)

-- Toggleterm
keymap("n", "<leader>t", ":ToggleTerm<CR>", opts)

-- -- Key map Nvim Debuger
-- keymap("n", "<F3>", ':lua require"dap".toggle_breakpoint()<CR>', opts)
-- keymap("n", "<F5>", ':lua require"dap".step_into()<CR>', opts)
-- keymap("n", "<F6>", ':lua require"dap".step_over()<CR>', opts)
-- keymap("n", "<c-y>", ':lua require("dapui").toggle()<CR>', opts)
-- keymap("n", "<leader>dH", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
-- keymap("n", "<c-k>", ':lua require"dap".step_out()<CR>')
-- keymap("n", "<F6>", ':lua require"dap".continue()<CR>')
-- keymap("n", "<leader>dk", ':lua require"dap".up()<CR>')
-- keymap("n", "<leader>dj", ':lua require"dap".down()<CR>')
-- keymap("n", "<leader>dc", ':lua require"dap".terminate()<CR>')
-- keymap("n", "<leader>dr", ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l')
-- keymap("n", "<leader>di", ':lua require"dap.ui.variables".hover()<CR>')
-- keymap("n", "<leader>di", ':lua require"dap.ui.variables".visual_hover()<CR>')
-- keymap("n", "<leader>d?", ':lua require"dap.ui.variables".scopes()<CR>')
-- keymap("n", "<leader>de", ':lua require"dap".set_exception_breakpoints({"all"})<CR>')
-- keymap("n", "<leader>da", ':lua require"debugHelper".attach()<CR>')
-- keymap("n", "<leadr>dA", ':lua require"debugHelper".attachToRemote()<CR>')
-- keymap("n", "<leader>di", ':lua require"dap.ui.widgets".hover()<CR>')
-- keymap("n", "<leader>d?", ':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>')

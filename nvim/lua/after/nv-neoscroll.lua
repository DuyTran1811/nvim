require("neoscroll").setup({
  easing_function = "quadratic",
})

local t = {}
t["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "350", [['sine']] } }
t["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "350", [['sine']] } }
t["<C-b>"] = { "scroll", { "-vim.api.nvim_win_get_height(0)", "true", "500", [['circular']] } }
t["<C-f>"] = { "scroll", { "vim.api.nvim_win_get_height(0)", "true", "500", [['circular']] } }
t["<C-y>"] = { "scroll", { "-0.10", "false", "100", nil } }
t["<C-e>"] = { "scroll", { "0.10", "false", "100", nil } }
t["zt"] = { "zt", { "300" } }
t["zz"] = { "zz", { "300" } }
t["zb"] = { "zb", { "300" } }

require("neoscroll.config").set_mappings(t)

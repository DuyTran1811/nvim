 require("formatter").setup({
     filetype = {
         lua = {
             function()
                 return {
                     exe = "stylua",
                     args = {
                         "-",
                         "--config-path",
                         "~/.config/nvim/styling/stylua.toml",
                     },
                     stdin = true,
                 }
             end,
         },
         rust = {
             function()
                 return {
                     exe = "rustfmt",
                     args = { "--emit=stdout", "--edition=2021" },
                     stdin = true,
                 }
             end,
         },
     },
     json = {
         function()
             return {
                 exe = "prettier",
                 args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--double-quote" },
                 stdin = true,
             }
         end,
     },
 })

 vim.api.nvim_exec(
     [[
 augroup FormatAutogroup
   autocmd!
   autocmd BufWritePost *.js,*.rs,*.lua FormatWrite
 augroup END
 ]],
     true
 )

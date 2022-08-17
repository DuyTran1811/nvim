require("dapui").setup({})
require("nvim-dap-virtual-text").setup({})
local dap = require("dap")
dap.adapters.codelldb = {
    type = "server",
    host = "127.0.0.1",
    executable = {
        command = "/.vscode/extensions/vadimcn.vscode-lldb-1.7.0/adapter/codelldb",
        args = { "--port", 13000 },
    },
}

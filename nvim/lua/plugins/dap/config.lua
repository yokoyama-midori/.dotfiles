return function()
  local dap = require("dap")
  -- codelldbアダプターの設定
  dap.adapters.codelldb = {
    type = "executable",
    command = "codelldb",
  }
  -- デバッグ設定
  dap.configurations.cpp = {
    {
      name = "Launch file",
      type = "codelldb",
      request = "launch",
      program = function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = false,
    },
  }
  dap.configurations.c = {
    {
      name = "Debug 9cc",
      type = "codelldb",
      request = "launch",
      program = "./9cc",
      args = {
        -- "tests",
        "example/experiment.c",
      },
      cwd = "${workspaceFolder}",
      stopOnEntry = false,
    },
  }
  dap.configurations.rust = dap.configurations.cpp
end


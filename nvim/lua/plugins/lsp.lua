return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--clang-tidy",
            "--clang-tidy-checks=*,-misc-definitions-in-headers,-clang-diagnostic-unused-include",
            "--header-insertion=never",
          },
        },
      },
    },
  },
}

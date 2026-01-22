return {
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({ transparent_background = true })

      local hl = vim.api.nvim_set_hl
      hl(0, "Normal", { bg = "NONE" })
      hl(0, "NormalNC", { bg = "NONE" })
      hl(0, "SignColumn", { bg = "NONE" })
      hl(0, "VertSplit", { bg = "NONE" })
      hl(0, "StatusLine", { bg = "NONE" })
      hl(0, "LineNr", { bg = "NONE" })
      hl(0, "CursorLine", { bg = "NONE" })
      hl(0, "Pmenu", { bg = "NONE" })
    end,
  },
}

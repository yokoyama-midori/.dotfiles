return {
  "nvim-treesitter/nvim-treesitter",
  -- tree-sitterはマクロ展開しないことなどが原因でうまくシンタックスハイライトできないときがあるのでオフに
  opts = {
    highlight = {
      enable = true,
      disable = { "c" },
    },
  },
}

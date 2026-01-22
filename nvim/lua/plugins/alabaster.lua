return {
  "p00f/alabaster.nvim",
  lazy = false, -- 起動時にロード
  config = function()
    -- termguicolors を有効化
    vim.opt.termguicolors = true

    -- コメントを控えめにする場合
    vim.g.alabaster_dim_comments = false

    -- 浮動ウィンドウの枠を有効にする場合
    vim.g.alabaster_floatborder = true

    -- カラースキームを適用
    vim.cmd.colorscheme("alabaster")

    -- 透過用設定
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
}

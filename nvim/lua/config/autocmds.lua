return {
  -- ファイルからフォーカスが外れた時に自動保存
  {
    "FocusLost",
    pattern = "*",
    command = "update",
  },
  -- インサートモードを抜けた時に自動保存
  {
    "InsertLeave",
    pattern = "*",
    command = "update",
  },
}
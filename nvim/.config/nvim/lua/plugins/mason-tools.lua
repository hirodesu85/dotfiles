return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        -- formatters
        "prettierd",
        -- "prettier", -- prettierdが嫌ならこっちでもOK

        -- 他にも必要ならここに追加していく
        -- "eslint_d",
        -- "stylua",
        -- "black",
      },
      run_on_start = true,
    },
  },
}


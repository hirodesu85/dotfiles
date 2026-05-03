return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        "prettierd",
        "black",
        "stylua",
      },
      run_on_start = true,
    },
  },
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      formatters_by_ft = {
        html   = { "prettierd", "prettier", stop_after_first = true },
        css    = { "prettierd", "prettier", stop_after_first = true },
        json   = { "prettierd", "prettier", stop_after_first = true },
        lua    = { "stylua" },
        python = { "black" },
      },
      format_on_save = {
        timeout_ms = 1000,
        lsp_format = "never",
      },
    },
  },
}

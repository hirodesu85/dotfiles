return {
  -- mason-lspconfig を「メイン」として扱う
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      -- Mason 本体
      { "mason-org/mason.nvim", opts = {} },
      -- LSP のプリセット集
      "neovim/nvim-lspconfig",
    },
    -- mason-lspconfig の設定
    opts = {
      -- ここに「自動インストールしたい LSP サーバー」を書く
      -- 名前は lspconfig の server 名（lua_ls / pyright / tsserver など）
      -- https://github.com/neovim/nvim-lspconfig に一覧あり :contentReference[oaicite:4]{index=4}
      ensure_installed = {
          "lua_ls",
          "pyright",
          "ts_ls"
      },
      automatic_enable = true,
    },
  },
}

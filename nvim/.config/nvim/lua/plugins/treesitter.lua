-- lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",      -- README 推奨
  lazy = false,           -- lazy-loading 非対応
  build = ":TSUpdate",    -- パーサ更新

  config = function()
    require("nvim-treesitter.configs").setup({
      -- ★ ここに「常に入れておきたい言語」を列挙
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "query",
        "javascript",
        "typescript",
        "json",
        "html",
        "css",
        "python",
      },

      highlight = {
        enable = true,
      },
    })
  end,
}

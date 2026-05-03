return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "html", "css", "json", "lua", "python",
      },

      highlight = {
        enable = true,
      },
    })
  end,
}

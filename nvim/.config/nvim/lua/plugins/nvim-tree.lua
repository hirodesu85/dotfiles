return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {
      "<C-n>",
      "<cmd>NvimTreeToggle<CR>",
      desc = "Toggle NvimTree",
    },
  },
  config = function()
      require("nvim-tree").setup({
  filters = {
    git_ignored = false, -- これを false にすると gitignore 対象も表示
    custom = { ".DS_Store" },
  },
})
  end,
}

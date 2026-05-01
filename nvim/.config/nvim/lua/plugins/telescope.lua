return {
  'nvim-telescope/telescope.nvim',
  tag = 'v0.2.0',  -- 導入時点で最新のrelease tag
  dependencies = {
    'nvim-lua/plenary.nvim',

    -- ネイティブソーター
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
  },

  config = function()
    require('telescope').setup({})

    -- よく使う picker をキー割り当て
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope: find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep,  { desc = 'Telescope: live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers,    { desc = 'Telescope: buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags,  { desc = 'Telescope: help tags' })
  end,
}


-- ファイラーにnvim-treeを用いるのでデフォルトのファイラーを無効化
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 基本設定
require("core.options")
require("core.keymap")

-- プラグインマネージャにはlazyを使用
require("config.lazy")

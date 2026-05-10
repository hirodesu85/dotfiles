-- ファイラーにnvim-treeを用いるのでデフォルトのファイラーを無効化
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 基本設定
require("core.options")
require("core.keymap")

-- プラグインマネージャにはlazyを使用
require("config.lazy")

-- Zellij内でNeovimを使った時に背景がバグるバグのワークアラウンド
-- もしアプデとかで解消されたら消したい
vim.api.nvim_create_autocmd({ "BufWinEnter", "WinClosed" }, {
	callback = function()
		vim.defer_fn(function()
			vim.cmd("mode")
		end, 30)
	end,
})

-- leader キー設定
vim.g.mapleader = ' '

-- LSP関連のキーマップ
vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>') -- エラーの表示
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>') -- カーソル下の変数情報表示
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>') -- 定義ジャンプ

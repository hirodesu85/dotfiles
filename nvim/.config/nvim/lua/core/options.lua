-- lang
vim.cmd('language en_US.UTF-8') -- 表示言語を英語にする

-- ファイル
vim.opt.fileencoding = "utf-8" -- エンコーディングをUTF-8に設定
vim.opt.swapfile = false -- スワップファイルを作成しない

-- カーソルと表示
vim.opt.cursorline = true -- カーソルがある行を強調

-- クリップボード共有
vim.opt.clipboard:append({ "unnamedplus" }) -- レジスタとクリップボードを共有

-- メニューとコマンド
vim.opt.wildmenu = true -- コマンドラインで補完
vim.opt.cmdheight = 1 -- コマンドラインの表示行数
vim.opt.laststatus = 3  -- グローバルステータスラインを使用
vim.opt.showcmd = true -- コマンドラインに入力されたコマンドを表示

-- 検索・置換え
vim.opt.hlsearch = true -- ハイライト検索を有効
vim.opt.incsearch = true -- インクリメンタルサーチを有効

-- カラースキーム
vim.opt.termguicolors = true -- 24 ビットカラーを使用
vim.opt.background = "dark" -- ダークカラーを使用する

-- インデント
vim.opt.shiftwidth = 4 -- シフト幅を4に設定する
vim.opt.tabstop = 4 -- タブ幅を4に設定する
vim.opt.expandtab = true -- タブ文字をスペースに置き換える
vim.opt.autoindent = true -- 自動インデントを有効にする
vim.opt.smartindent = true -- インデントをスマートに調整する

-- 表示
vim.opt.number = true -- 行番号の表示
vim.opt.wrap = true -- テキストの自動折り返し
vim.opt.showtabline = 2 -- 画面上部のタブを常に表示
vim.opt.visualbell = true -- ビープ音の代わりに画面をフラッシュ
vim.opt.showmatch = true -- 対応する括弧をハイライト表示

-- インターフェース
vim.opt.winblend = 0 -- ウィンドウの不透明度
vim.opt.pumblend = 0 -- ポップアップメニューの不透明度
vim.opt.signcolumn = "yes" -- サインカラムを表示

-- 行番号の色を変更
vim.cmd("highlight LineNr guifg=#8a70ac")

-- カーソルの形状
vim.o.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

-- ビジュアルモードで行末の右側も選択可能にする
vim.opt.virtualedit:append("block")

-- ファイル未保存の状態で移動できないようにする
vim.opt.hidden = false
vim.opt.confirm = true

-- サインカラムの優先順位(エラー/警告/ヒントの表示順）
vim.diagnostic.config({ severity_sort = true })

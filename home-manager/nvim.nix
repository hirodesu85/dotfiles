{ config, pkgs, ... }:
{
  programs.nixvim = {
    enable = true;
    colorschemes.tokyonight.enable = true;

    globals = {
      mapleader = " "; # leader キーをスペースに設定
      # nvim-tree を使うので標準ファイラ netrw を無効化
      loaded_netrw = 1;
      loaded_netrwPlugin = 1;
    };

    opts = {
      # ファイル
      fileencoding = "utf-8"; # 保存時の文字コード
      swapfile = false; # .swp ファイルを作らない

      # 表示
      number = true; # 行番号を表示
      cursorline = true; # カーソル行をハイライト
      wrap = true; # 長い行を折り返す
      signcolumn = "yes"; # サイン欄を常に確保（画面のガタつき防止）
      laststatus = 3; # ステータスラインを画面下に1本だけ

      # インデント
      shiftwidth = 4; # >> で動かす幅
      tabstop = 4; # タブ文字の表示幅
      expandtab = true; # タブをスペースに変換
      smartindent = true; # 文脈に応じた自動インデント

      # 操作
      clipboard = "unnamedplus"; # OS のクリップボードと共有
      hidden = false; # 未保存のまま他バッファへ移動しない
      confirm = true; # 移動時に保存するか確認
      virtualedit = "block"; # 矩形選択で文字のない位置も選べる
      guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"; # モード別カーソル形状
    };

    keymaps = [
      {
        mode = "n";
        key = "gl";
        action.__raw = "vim.diagnostic.open_float";
        options.desc = "エラーを表示";
      }
      {
        mode = "n";
        key = "K";
        action.__raw = "vim.lsp.buf.hover";
        options.desc = "カーソル下の情報を表示";
      }
      {
        mode = "n";
        key = "gd";
        action.__raw = "vim.lsp.buf.definition";
        options.desc = "定義へジャンプ";
      }
      {
        mode = "n";
        key = "<C-n>";
        action = "<cmd>NvimTreeToggle<CR>";
        options.desc = "Toggle NvimTree";
      }
    ];

    plugins.telescope = {
      enable = true;
      extensions.fzf-native.enable = true;
      keymaps = {
        "<leader>ff" = {
          action = "find_files";
          options.desc = "Telescope: find files";
        };
        "<leader>fg" = {
          action = "live_grep";
          options.desc = "Telescope: live grep";
        };
      };
    };

    plugins.nvim-tree = {
      enable = true;
      settings = {
        filters = {
          git_ignored = false; # gitignore 対象も表示する
          custom = [ ".DS_Store" ".git" ];
        };
      };
    };
  };
}

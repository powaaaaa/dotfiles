-- ファイル
vim.opt.fileencoding = "utf-8" -- encoding
vim.opt.swapfile = false -- no swap file
vim.opt.helplang = "ja" -- help fileの言語
vim.opt.hidden = true -- buffe切替時ファイル未保存で実行

-- カーソルと表示
vim.opt.cursorline = true -- カーソルがある行を強調
-- vim.opt.cursorcolumn = true -- カーソルがある列を強調

-- クリップボード共有
vim.opt.clipboard:append({ "unnamedplus" }) -- レジスタとクリップボードを共有

-- メニューとコマンド
vim.opt.wildmenu = true -- コマンドラインで補完
vim.opt.cmdheight = 1 -- コマンドラインの表示行数
vim.opt.laststatus = 2 -- 下部にステータスラインを表示
vim.opt.showcmd = true -- コマンドラインに入力されたコマンドを表示

-- 検索・置換え
vim.opt.hlsearch = true -- ハイライト検索を有効
vim.opt.incsearch = true -- インクリメンタルサーチを有効
vim.opt.matchtime = 1 -- 入力された文字列がマッチするまでにかかる時間
vim.api.nvim_set_option('ignorecase', true) -- 検索時に大文字小文字無視
vim.api.nvim_set_option('smartcase', true) -- 検索時に大文字が含まれていたらignorecaseを無効化

-- カラースキーム


-- インデント
vim.opt.shiftwidth = 2 -- シフト幅を2に設定する
vim.opt.tabstop = 2 -- タブ幅を2に設定する
vim.opt.expandtab = true -- タブ文字をスペースに置き換える
vim.opt.autoindent = true -- 自動インデントを有効にする
vim.opt.smartindent = true -- インデントをスマートに調整する

-- 表示
vim.opt.number = true -- 行番号を表示
vim.opt.wrap = false -- テキストの自動折り返しを無効に
vim.opt.showtabline = 2 -- タブラインを表示
                        -- （1:常に表示、2:タブが開かれたときに表示）
vim.opt.visualbell = true -- ビープ音を表示する代わりに画面をフラッシュ
vim.opt.showmatch = true -- 対応する括弧をハイライト表示

-- 不透明度
vim.opt.termguicolors = true
vim.opt.winblend = 0 -- ウィンドウの不透明度
vim.opt.pumblend = 0 -- ポップアップメニューの不透明度

-- インタフェース
vim.opt.signcolumn = "yes" -- サインカラムを表示

-- Keymap
vim.g.mapleader = " " -- <leader>をスペースキーに

-- Neo-treeの自動起動設定
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("Neotree")
  end
})

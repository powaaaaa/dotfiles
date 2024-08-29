require('nvim-treesitter').setup({
-- ここでハイライトしたい言語を指定しておくと、起動時にインストールされます
-- ensure_installed = {"vim","dockerfile", "java", "typescript","tsx","javascript","json","lua","gitignore","bash","markdown","css","scss","yaml", "toml","php","html"},
   ensure_installed = "maintained",
  highlight = {
    enable = true, -- ハイライトを有効化
    additional_vim_regex_highlighting = false, -- catpuucin用
    disable = {},
  },
  indent ={
    enable =true,--言語に応じた自動インデントを有効化
    -- disable ={"html"},-- htmlのインデントだけ無効化
  },
  autotag = {
    enable = true,
  },
})


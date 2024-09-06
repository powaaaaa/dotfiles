-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  -- import/override with your plugins folders]
  { -- further customize the options set by the community
    "rose-pine",
    opts = {
      variant = "main", -- auto, main, moon, or dawn
      dark_variant = "main", -- main, moon, or dawn
      dim_inactive_windows = false,
      extend_background_behind_borders = true,

      enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
      },

      styles = {
          bold = true,
          italic = true,
          transparency = true,
      },

      groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
      },

      palette = {
          -- Override the builtin palette per variant
          -- moon = {
          --     base = '#18191a',
          --     overlay = '#363738',
          -- },
      },

      highlight_groups = {
        -- Lovely statusline
        StatusLine = { fg = "love", bg = "love", blend = 10 },
        StatusLineNC = { fg = "subtle", bg = "surface" },
        -- Leafy search
        CurSearch = { fg = "base", bg = "leaf", inherit = false },
        Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },
        -- Pop-up メニューの枠線に色を設定
        Pmenu = { bg = "none", fg = "none" }, -- ポップアップメニューの背景と前景色
        PmenuSel = { bg = "rose", fg = "none" }, -- 選択された項目の背景色
        PmenuSbar = { bg = "muted" }, -- スクロールバーの背景色
        PmenuThumb = { bg = "iris" }, -- スクロールバーのつまみの色
        FloatBorder = { fg = "muted", bg = "none" }, -- フロートウィンドウの枠線
        TelescopeBorder = { fg = "muted"}, -- Telescopeの枠線
        -- 他のUI要素に必要な枠線を追加可能
      },
    },
  },
}

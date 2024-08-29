-- pluginを管理する関数
-- require("lazy").setup(plugins, {
-- performance = {
--	rtp = {
--            disabled_plugins = {
--		    "netrw",
--		    "netrwPlugin",
--		    "netrwSettings",
--		    "netrwFileHandlers",
--	    },
--	},
--   },
--}

require 'options'
require 'lazy-nvim'

-- color schemeを設定
-- vim.cmd([[colorscheme onenord]])
-- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
require("catppuccin").setup({
    flavour = "mocha",
    color_overrides = {
        mocha = {
            base = "#12121a",
            mantle = "#12121a",
            crust = "#12121a",
        },
    },
    transparent_background = true,
})
vim.cmd.colorscheme("catppuccin-mocha")
vim.cmd("highlight TelescopeSelection cterm=bold gui=bold guifg=#a6e3a1 guibg=#181825")

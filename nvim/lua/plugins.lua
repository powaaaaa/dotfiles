use({ "catppuccin/nvim", as = "catppuccin" })

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more inz
    },
    config = function()
      require('config/neo-tree')
    end
  },
  {
    "romgrk/barbar.nvim",
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  {
    "numToStr/Comment.nvim",
    config = function()
      require('config/comment')
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('config/gitsigns')
    end
  },
  {
    "ixru/nvim-markdown",
    confiig = function()
      require('config/nvim-markdown')
    end
  },
  {
    'MeanderingProgrammer/markdown.nvim',
    name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
        require('config/render-markdown')
    end,
  },
  { 
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate", 
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    main = 'nvim-treesitter.configs', 
    opts = {
      highlight = { enable = true },
    }, 
  }, 
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    event = "CursorMoved",
  },
  {
    "rmehri01/onenord.nvim"
  }
}

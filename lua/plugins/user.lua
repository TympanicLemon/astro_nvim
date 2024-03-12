---@type LazySpec
return {
  -- [[ disabled plugins ]]
  { "windwp/nvim-autopairs", enabled = false },

  -- Lua lsp and formatting
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
      })
    end,
  },

  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "stylua",
      })
    end,
  },

  {
    "nvimtools/none-ls.nvim",
    opts = function(_, config)
      local null_ls = require "null-ls"

      config.sources = {
        null_ls.builtins.formatting.stylua,
      }
      return config
    end,
  },

  -- [[ plugins ]]
  { "folke/tokyonight.nvim" },

  {
    "mbbill/undotree",
    config = function()
      vim.g.undotree_SplitWidth = 40
      vim.g.undotree_DiffpanelHeight = 20

      vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle)
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
    },
  },
}

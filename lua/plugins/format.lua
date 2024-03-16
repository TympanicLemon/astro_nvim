return {
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
}

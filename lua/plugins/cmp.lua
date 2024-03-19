return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "tzachar/cmp-tabnine",
  },
  opts = function(_, opts)
    local cmp = require "cmp"
    opts.sources = cmp.config.sources {
      { name = "cmp_tabnine", priority = 1000 },
      { name = "nvim_lsp", priority = 800 },
      { name = "luasnip", priority = 750 },
      { name = "buffer", priority = 500 },
      { name = "path", priority = 250 },
    }
  end,
}

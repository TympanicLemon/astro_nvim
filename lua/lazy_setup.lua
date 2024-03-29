require("lazy").setup({
  {
    "AstroNvim/AstroNvim",
    branch = "v4", -- TODO: change `branch="v4"` to `version="^4"` on release
    import = "astronvim.plugins",
    opts = {},
  },
  { import = "community" },
  { import = "plugins" },
} --[[@as LazySpec]], {
  install = { colorscheme = { "astrodark" } },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
      },
    },
  },
} --[[@as LazyConfig]])

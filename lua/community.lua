---@type LazySpec
return {
  -- TODO: Remove branch v4 on release
  { "AstroNvim/astrocommunity", branch = "v4" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
}

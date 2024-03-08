---@type LazySpec
return {
  -- TODO: Remove branch v4 on release
  { "AstroNvim/astrocommunity", branch = "v4" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.project.nvim-spectre" },
}

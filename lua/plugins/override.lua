return {
  "mfussenegger/nvim-jdtls",
  config = function(_, opts)
    opts.settings.java.implementationsCodeLens.enabled = false
    opts.settings.java.referencesCodeLens.enabled = false
    opts.settings.signatureHelp.enabled = false
  end,
}

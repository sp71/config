return {
  { import = "lazyvim.plugins.extras.lang.go" },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              buildFlags = { "-tags=integration,unittest" },
              expandWorkspaceToModule = true,
              semanticTokens = true,
              analyses = {
                nilness = true,
                unusedparams = true,
                unusedwrite = true,
                unusedvariable = true,
                composites = false,
                fieldalignment = false,
              },
            },
          },
        },
      },
    },
  },
}

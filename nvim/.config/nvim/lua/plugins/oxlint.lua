return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    local util = require("lspconfig.util")
    opts.servers = opts.servers or {}

    opts.servers.oxlint = {
      root_dir = util.root_pattern(".oxlintrc.json", "package.json", ".git"),
    }
  end,
}

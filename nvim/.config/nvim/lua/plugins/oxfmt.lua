return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters.oxfmt = {
      command = function()
        local local_bin = vim.fn.getcwd() .. "/node_modules/.bin/oxfmt"
        if vim.fn.executable(local_bin) == 1 then
          return local_bin
        end
        return "oxfmt"
      end,
      args = { "--stdin-filepath", "$FILENAME" },
      stdin = true,
    }

    opts.formatters_by_ft = vim.tbl_deep_extend("force", opts.formatters_by_ft or {}, {
      javascript = { "oxfmt" },
      javascriptreact = { "oxfmt" },
      typescript = { "oxfmt" },
      typescriptreact = { "oxfmt" },
      json = { "oxfmt" },
      jsonc = { "oxfmt" },
    })

    opts.format_on_save = {
      timeout_ms = 2000,
      lsp_fallback = true,
    }
  end,
}

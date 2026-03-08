return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      html = { "prettier_vm_html" },
    },
    formatters = {
      prettier_vm_html = {
        command = "prettier",
        args = { "--stdin-filepath", "$FILENAME", "--parser", "html" },
        stdin = true,
      },
    },
  },
}

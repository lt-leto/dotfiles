return {
  {
    "josewal/neotest-cypress",
  },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-cypress"] = {
          log_level = "DEBUG", -- Set to "DEBUG" to see all logs
        },
      },
    },
  },
}

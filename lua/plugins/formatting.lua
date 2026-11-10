vim.g.lazyvim_prettier_needs_config = true

return {
  {
    "stevearc/conform.nvim",
    opts = {
      default_format_opts = {
        stop_after_first = true,
      },
      formatters = {
        oxfmt = {
          cwd = require("conform.util").root_file({
            ".oxfmtrc.json",
            ".oxfmtrc.jsonc",
            "oxfmt.config.ts",
          }),
          require_cwd = true,
        },
      },
      formatters_by_ft = {
        css = { "oxfmt", "prettier" },
      },
    },
  },
}

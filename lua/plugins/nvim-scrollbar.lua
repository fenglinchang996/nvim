return {
  "petertriho/nvim-scrollbar",
  event = "BufReadPost",
  config = function()
    local scrollbar = require("scrollbar")
    local colors = require("tokyonight.colors").setup()
    scrollbar.setup({
      handle = { color = colors.bg_highlight },
      excluded_filetypes = { "prompt", "TelescopePrompt", "noice", "notify" },
      marks = {
        Search = { color = colors.orange },
        Error = { color = colors.error },
        Warn = { color = colors.warning },
        Info = { color = colors.info },
        Hint = { color = colors.hint },
        Misc = { color = colors.purple },
        GitAdd = { text = "│", color = colors.gitSigns.add },
        GitChange = { color = colors.gitSigns.change },
        GitDelete = { color = colors.gitSigns.delete },
      },
      handlers = {
        gitsigns = true,
      },
    })
  end,
}

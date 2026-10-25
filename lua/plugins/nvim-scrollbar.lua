return {
  "petertriho/nvim-scrollbar",
  branch = "refactor/v2", -- Remove this line after v2 merges into main on 2026-11-16
  event = "BufReadPost",
  opts = {
    exclude = {
      filetypes = {
        notify = true, -- Append to default excluded filetypes (prompt, TelescopePrompt, noice, etc. are built-in)
      },
    },
    providers = {
      gitsigns = true,
      search = { incsearch = true }, -- Show search matches on the scrollbar while typing / or ?
      marks = { numbers = true }, -- Show both letter (a-z) and numbered (0-9) marks
    },
    scrollbar = {
      preset = "intellij", -- 2-column layout: inner Git lane + outer track/thumb/marks column
      unit = "screenline", -- Account for closed folds and wrapped lines
      floats = true, -- Enable scrollbar in snacks.picker and Telescope floating windows
    },
    minimap = {
      enabled = false,
    },
  },
}

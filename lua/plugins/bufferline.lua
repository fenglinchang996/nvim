return {
  "akinsho/bufferline.nvim",
  keys = {
    { "<leader>bj", "<Cmd>BufferLinePick<CR>", desc = "Jump to a buffer" },
  },
  opts = {
    options = {
      always_show_bufferline = true,
      separator_style = "thick",
    },
  },
}

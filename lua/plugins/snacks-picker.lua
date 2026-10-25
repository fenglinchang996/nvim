return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          layout = {
            preset = "dropdown",
          },
          hidden = true,
          ignored = false,
          auto_close = true,
          actions = {
            -- Toggle ignored files and persist state for the current session
            toggle_ignored_session = function(picker)
              picker.opts.ignored = not picker.opts.ignored
              Snacks.config.picker.sources = Snacks.config.picker.sources or {}
              Snacks.config.picker.sources.explorer = Snacks.config.picker.sources.explorer or {}
              Snacks.config.picker.sources.explorer.ignored = picker.opts.ignored
              picker.list:set_target()
              picker:find()
            end,
            -- Toggle hidden files and persist state for the current session
            toggle_hidden_session = function(picker)
              picker.opts.hidden = not picker.opts.hidden
              Snacks.config.picker.sources = Snacks.config.picker.sources or {}
              Snacks.config.picker.sources.explorer = Snacks.config.picker.sources.explorer or {}
              Snacks.config.picker.sources.explorer.hidden = picker.opts.hidden
              picker.list:set_target()
              picker:find()
            end,
          },
          win = {
            list = {
              keys = {
                ["I"] = "toggle_ignored_session",
                ["H"] = "toggle_hidden_session",
              },
            },
          },
        },
      },
    },
  },
}

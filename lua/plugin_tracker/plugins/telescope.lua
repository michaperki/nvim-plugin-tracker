-- lua/plugin_tracker/plugins/telescope.lua

local M = {}
local core = require('plugin_tracker.core')

local telescope_commands = {
  "Telescope",
  "Telescope find_files",
  "Telescope live_grep",
  "Telescope buffers",
  "Telescope help_tags",
  -- Add more Telescope commands as needed
}

function M.setup()
  for _, cmd in ipairs(telescope_commands) do
    vim.api.nvim_create_autocmd("CmdlineLeave", {
      pattern = cmd,
      callback = function()
        core.track_command("Telescope", cmd)
      end
    })
  end
end

return M

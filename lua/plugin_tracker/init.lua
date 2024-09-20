-- lua/plugin_tracker/init.lua

local M = {}

function M.setup(opts)
  require('plugin_tracker.core').setup(opts)
  
  -- Load and setup individual plugin trackers
  require('plugin_tracker.plugins.telescope').setup()
  -- Add more plugins here as we implement them
  -- require('plugin_tracker.plugins.nvim_tree').setup()
  -- require('plugin_tracker.plugins.lsp').setup()
  -- require('plugin_tracker.plugins.harpoon').setup()
end

return M

if exists('g:loaded_plugin_tracker') | finish | endif
let g:loaded_plugin_tracker = 1

command! -nargs=0 PluginTrackerReport lua require'plugin_tracker'.display_report()

lua << END
local plugin_tracker = require('plugin_tracker')

function _G.plugin_tracker_display_report()
  local report = plugin_tracker.generate_report()
  vim.api.nvim_echo({{report, "Normal"}}, true, {})
end

-- Example of how to track a command
vim.api.nvim_create_user_command('ExampleCommand', function()
  plugin_tracker.track_command('ExamplePlugin', 'ExampleCommand')
  print('Example command executed')
end, {})
END

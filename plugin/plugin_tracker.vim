" plugin/plugin_tracker.vim

if exists('g:loaded_plugin_tracker') | finish | endif
let g:loaded_plugin_tracker = 1

command! -nargs=0 PluginTrackerReport lua require('plugin_tracker.report').display_report()

lua << END
require('plugin_tracker').setup()

-- Example command (keep for testing)
vim.api.nvim_create_user_command('ExampleCommand', function()
  require('plugin_tracker.core').track_command('ExamplePlugin', 'ExampleCommand')
  print('Example command executed')
end, {})
END

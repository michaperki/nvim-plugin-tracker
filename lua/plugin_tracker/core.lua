-- lua/plugin_tracker/core.lua

local M = {}

M.usage_data = {}

function M.init_plugin(plugin_name)
  M.usage_data[plugin_name] = {
    commands = {},
    total_uses = 0
  }
end

function M.track_command(plugin_name, command_name)
  if not M.usage_data[plugin_name] then
    M.init_plugin(plugin_name)
  end
  M.usage_data[plugin_name].commands[command_name] = (M.usage_data[plugin_name].commands[command_name] or 0) + 1
  M.usage_data[plugin_name].total_uses = M.usage_data[plugin_name].total_uses + 1
end

function M.setup(opts)
  -- Any global setup logic
end

return M

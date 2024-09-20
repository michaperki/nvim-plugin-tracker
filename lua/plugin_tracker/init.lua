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

function M.generate_report()
  local report = "Plugin Usage Report:\n\n"
  for plugin, data in pairs(M.usage_data) do
    report = report .. string.format("Plugin: %s (Total uses: %d)\n", plugin, data.total_uses)
    report = report .. "  Commands:\n"
    for cmd, count in pairs(data.commands) do
      report = report .. string.format("    %s: %d\n", cmd, count)
    end
    report = report .. "\n"
  end
  return report
end

function M.setup()
  -- Any setup logic can go here
end

return M

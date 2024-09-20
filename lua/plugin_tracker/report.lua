-- lua/plugin_tracker/report.lua

local M = {}
local core = require('plugin_tracker.core')

function M.generate_report()
  local report = "Plugin Usage Report:\n\n"
  for plugin, data in pairs(core.usage_data) do
    report = report .. string.format("Plugin: %s (Total uses: %d)\n", plugin, data.total_uses)
    report = report .. "  Commands:\n"
    for cmd, count in pairs(data.commands) do
      report = report .. string.format("    %s: %d\n", cmd, count)
    end
    report = report .. "\n"
  end
  return report
end

function M.display_report()
  local report = M.generate_report()
  vim.api.nvim_echo({{report, "Normal"}}, true, {})
end

return M

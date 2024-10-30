--[[
sixty.nvim Notifications

Displays notification messages of using non-60% keys
to encourage the user to adopt a 60% keyboard layout.
]]

local M = {}

--- Displays a notification reminding the user to use 60% layout keys.
--  The notification timeout is configured in `sixty.config`.
function M.notify_arrow_usage()
  vim.notify("Use 60% keyboard keys for movement!", vim.log.levels.INFO, {
    title = "sixty.nvim",
    timeout = require("sixty.config").notify_timeout,
  })
end

return M


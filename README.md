# sixty.nvim

Neovim plugin that disables arrow keys
and encourages using a 60% keyboard layout by displaying reminders.

## About

Remaps following keys to `<Nop>` as well notifying user to use 60% layout keys:

```lua
vim.keymap.set(
  "{n,i,v,c}",
  "{<Up>,<Down>,<Left>,<Right>}",
  notifications.notify_arrow_usage,
  { remap = false, silent = true }
)
```

Also enables *tcsh-style* command line controls:

```lua
vim.keymap.set("c", "<C-A>", "<Home>", { remap = false })
vim.keymap.set("c", "<C-F>", "<Right>", { remap = false })
vim.keymap.set("c", "<C-B>", "<Left>", { remap = false })
```

## Installation

Using `lazy.nvim`, add this plugin as follows:

```lua
{
  "deytenit/sixty.nvim",
  config = function()
    require("sixty").setup()
  end,
}
```

> [!IMPORTANT]
> If you are using LazyVim, add the following to your `keymaps.lua`
> to ensure the arrow keys are disabled in normal mode:

```lua
-- sixty.nvim
local status, sixty = pcall(require, "sixty")
if status and sixty then
  sixty.set("n", "<Up>")
  sixty.set("n", "<Down>")
end
```

## Setup Options

You can pass options to `sixty.setup()` to customize the plugin's behavior:

- `notify_timeout` (default: `2000`):
  Set the duration of the notification display in milliseconds.

Example:

```lua
require("sixty").setup({
  notify_timeout = 3000, -- Notification will display for 3 seconds
})
```

## License

This project is licensed under the MIT License.
See the [LICENSE](./LICENSE) file for details.

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
  -- Refresh rate
  vim.g.neovide_refresh_rate = 120

  -- Transparency
  vim.g.neovide_transparency = 0.8

  -- Font
  vim.o.guifont = "JetBrains Mono:h12"

  -- Cursor animation
  vim.g.neovide_cursor_animation_length = 0.13
  -- Scale factor (makes everything smaller, default: 1.0)
  vim.g.neovide_scale_factor = 0.8

  -- Allow ctrl + scroll to change font size
  vim.g.neovide_scale_factor_step = 0.1
end

-- https://github.com/okuuva/auto-save.nvim
--
-- This is a fork of original plugin `https://github.com/pocco81/auto-save.nvim`
-- but the original one was updated 2 years ago, and I was experiencing issues
-- with autoformat and undo/redo
--
-- Filename: ~/github/dotfiles-latest/neovim/neobean/lua/plugins/auto-save.lua
-- ~/github/dotfiles-latest/neovim/neobean/lua/plugins/auto-save.lua

-- My related YouTube video
-- Save neovim files automatically with auto-save.nvim
-- https://youtu.be/W5fjlU4tSpw

-- Autocommand for printing the autosaved message
return {
  {
    "okuuva/auto-save.nvim",
    version = "^1.0.0", -- see https://devhints.io/semver, alternatively use '*' to use the latest tagged release
    cmd = "ASToggle", -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {
      debounce_delay = 750,

      -- your config goes here
      -- or just leave it empty :)
    },
  },
}

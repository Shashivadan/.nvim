return {
  -- amongst your other plugins
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      -- Your custom configuration options go here
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      -- Key mapping for \
      vim.keymap.set("n", "\\", "<cmd>ToggleTerm<cr>", { noremap = true, silent = true })
      vim.keymap.set("t", "\\", "<C-\\><C-n><cmd>ToggleTerm<cr>", { noremap = true, silent = true })
    end,
  },
}

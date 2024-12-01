return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      -- Your custom configuration options go here
      start_in_insert = true,  -- Automatically start in insert mode
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)
      -- Key mapping for \
      vim.keymap.set("n", "\\", function()
        vim.cmd("ToggleTerm")
        -- Ensure we enter insert mode after opening the terminal
        vim.cmd("startinsert")
      end, { noremap = true, silent = true })
      
      -- Similar mapping for terminal mode, but exit to normal mode first
      vim.keymap.set("t", "\\", "<C-\\><C-n><cmd>ToggleTerm<cr>", { noremap = true, silent = true })
    end,
  },
}

return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      start_in_insert = true,
      opts = function()
        LazyVim.cmp.actions.ai_accept = function()
          if require("copilot.suggestion").is_visible() then
            LazyVim.create_undo()
            require("copilot.suggestion").accept()
            return true
          end
        end
      end,
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)
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

return {
  -- Copilot
  {
    "github/copilot.vim",
    event = "VeryLazy",
    config = function()
      vim.keymap.set("n", "<leader>ce", "<cmd>Copilot enable<CR>", { desc = "Enable Copilot" })
      vim.keymap.set("n", "<leader>cd", "<cmd>Copilot disable<CR>", { desc = "Disable Copilot" })
    end,
  },
}

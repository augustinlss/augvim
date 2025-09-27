return {
  -- Spectre (find/replace across multiple files)
  {
    "nvim-pack/nvim-spectre",
    event = "VeryLazy",
    config = function()
      require("spectre").setup({ is_block_ui_break = true })
      vim.keymap.set("n", "mfr", "<cmd>Spectre<cr>", { desc = "Find and replace" })
    end,
  },
}

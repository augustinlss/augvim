return {
  -- Transparency
  {
    "xiyaowong/transparent.nvim",
    event = "VeryLazy",
    config = function()
      require("transparent").setup({
        extra_groups = {
          "NvimTreeNormal",
          "NvimTreeNormalNC",
        },
      })
      vim.keymap.set("n", "<leader>tt", ":TransparentToggle<CR>", { noremap = true, silent = true })
    end,
  },
}

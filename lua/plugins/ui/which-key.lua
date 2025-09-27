return {
  -- Which key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("which-key").setup({
        ["<leader>c"] = { name = "[C]ode" },
        ["<leader>d"] = { name = "[D]ocument" },
        ["<leader>r"] = { name = "[R]ename" },
        ["<leader>s"] = { name = "[S]earch" },
        ["<leader>w"] = { name = "[W]orkspace" },
      })
    end,
  },
}

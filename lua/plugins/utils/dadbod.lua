return {
  -- SQL Database UI and completion
  {
    "kristijanhusak/vim-dadbod-ui",
    event = "VeryLazy",
    dependencies = {
      { "tpope/vim-dadbod", lazy = true },
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
    },
    config = function()
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },
}

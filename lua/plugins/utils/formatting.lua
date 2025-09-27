return {
  -- Conform (Autoformat)
  {
    "stevearc/conform.nvim",
    event = "VeryLazy",
    config = function()
      require("conform").setup({
        notify_on_error = true,
        format_on_save = function(bufnr)
          local disable_filetypes = { c = true, cpp = true, cs = true, php = false }
          return {
            async = false,
            timeout_ms = 1000,
            lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
          }
        end,
        formatters_by_ft = {
          lua = { "stylua" },
          rust = { "rustfmt" },
          cs = { "csharpier" },
        },
        formatters = {
          ["php-cs-fixer"] = {
            command = "php-cs-fixer",
            args = {
              "fix",
              "--config=" .. "$HOME/.php-cs-fixer.php",
              "$FILENAME",
            },
            stdin = false,
          },
        },
      })
    end,
  },
}
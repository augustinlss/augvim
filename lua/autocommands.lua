-- [[ Autocommands ]]

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Auto resize splits when window is resized
vim.api.nvim_create_autocmd("VimResized", {
  desc = "Auto resize splits when window is resized",
  group = vim.api.nvim_create_augroup("kickstart-auto-resize", { clear = true }),
  callback = function()
    vim.cmd("wincmd =")
  end,
})

-- Auto close some filetypes with <q>
vim.api.nvim_create_autocmd("FileType", {
  desc = "Auto close some filetypes with <q>",
  group = vim.api.nvim_create_augroup("kickstart-auto-close", { clear = true }),
  pattern = {
    "PlenaryTestPopup",
    "help",
    "lspinfo",
    "man",
    "notify",
    "qf",
    "spectre_panel",
    "startuptime",
    "tsplayground",
    "neotest-output",
    "checkhealth",
    "neotest-summary",
    "neotest-output-panel",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})

-- Auto format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  desc = "Auto format on save",
  group = vim.api.nvim_create_augroup("kickstart-auto-format", { clear = true }),
  callback = function()
    local client = vim.lsp.get_active_clients({ bufnr = 0 })[1]
    if client and client.supports_method("textDocument/formatting") then
      vim.lsp.buf.format()
    end
  end,
})
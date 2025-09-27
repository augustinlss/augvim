return {
	-- Harpoon
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		event = "VeryLazy",
		config = function()
			require("harpoon").setup({
				menu = {
					width = vim.api.nvim_win_get_width(0) - 4,
				},
			})

			-- Harpoon keymaps
			vim.keymap.set("n", "<leader>ha", function()
				require("harpoon.mark").add_file()
			end, { desc = "Add file to Harpoon" })
			vim.keymap.set("n", "<leader>hl", function()
				require("harpoon.ui").toggle_quick_menu()
			end, { desc = "Toggle Harpoon quick menu" })
			vim.keymap.set("n", "<leader>hr", function()
				require("harpoon.mark").clear_all()
			end, { desc = "clear files from Harpoon" })
			vim.keymap.set("n", "<C-e>", function()
				require("harpoon.ui").toggle_quick_menu()
			end, { desc = "Toggle Harpoon quick menu" })
			vim.keymap.set("n", "<leader>n", function()
				require("harpoon.ui").nav_next()
			end, { desc = "Go to next Harpoon file" })
			vim.keymap.set("n", "<leader>p", function()
				require("harpoon.ui").nav_prev()
			end, { desc = "Go to previous Harpoon file" })
		end,
	},
}

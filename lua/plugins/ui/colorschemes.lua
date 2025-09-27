return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			transparent_background = false, -- We'll handle transparency manually
			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
			term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = false, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
			no_italic = false, -- Force no italic
			no_bold = false, -- Force no bold
			no_underline = false, -- Force no underline
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" }, -- Change the style of comments
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
			},
			color_overrides = {},
			custom_highlights = function(colors)
				return {
					-- Main editor background - make transparent
					Normal = { bg = "NONE" },
					NormalNC = { bg = "NONE" },
					SignColumn = { bg = "NONE" },
					LineNr = { bg = "NONE" },
					CursorLineNr = { bg = "NONE" },
					FoldColumn = { bg = "NONE" },

					-- Keep specific UI elements with background
					-- Telescope
					TelescopeNormal = { bg = colors.mantle },
					TelescopeBorder = { bg = colors.mantle, fg = colors.blue },
					TelescopePromptNormal = { bg = colors.surface0 },
					TelescopePromptBorder = { bg = colors.surface0, fg = colors.blue },
					TelescopePromptTitle = { bg = colors.blue, fg = colors.mantle },
					TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },
					TelescopeResultsTitle = { bg = colors.lavender, fg = colors.mantle },
					TelescopeSelection = { bg = colors.surface0, fg = colors.text },
					TelescopeSelectionCaret = { bg = colors.surface0, fg = colors.flamingo },

					-- Completion menu (nvim-cmp)
					Pmenu = { bg = colors.surface0, fg = colors.text },
					PmenuSel = { bg = colors.surface1, fg = colors.text, style = { "bold" } },
					PmenuSbar = { bg = colors.surface1 },
					PmenuThumb = { bg = colors.overlay0 },
					CmpItemAbbr = { fg = colors.text },
					CmpItemAbbrMatch = { fg = colors.blue, style = { "bold" } },
					CmpItemAbbrMatchFuzzy = { fg = colors.blue, style = { "bold" } },
					CmpItemKind = { fg = colors.teal },
					CmpItemMenu = { fg = colors.subtext1 },

					-- Command line
					MsgArea = { bg = colors.mantle },

					-- Statusline (lualine will use these)
					StatusLine = { bg = colors.mantle, fg = colors.text },
					StatusLineNC = { bg = colors.surface0, fg = colors.subtext1 },

					-- Tabline
					TabLine = { bg = colors.mantle, fg = colors.subtext1 },
					TabLineFill = { bg = colors.mantle },
					TabLineSel = { bg = colors.surface0, fg = colors.text },

					-- Winbar
					WinBar = { bg = colors.mantle, fg = colors.text },
					WinBarNC = { bg = colors.surface0, fg = colors.subtext1 },

					-- Float windows (keep backgrounds)
					NormalFloat = { bg = colors.mantle, fg = colors.text },
					FloatBorder = { bg = colors.mantle, fg = colors.blue },
					FloatTitle = { bg = colors.mantle, fg = colors.text },

					-- Notifications
					NotifyBackground = { bg = colors.base },

					-- Git signs (keep backgrounds for better visibility)
					GitSignsAdd = { bg = "NONE", fg = colors.green },
					GitSignsChange = { bg = "NONE", fg = colors.yellow },
					GitSignsDelete = { bg = "NONE", fg = colors.red },

					-- Diagnostic signs
					DiagnosticSignError = { bg = "NONE", fg = colors.red },
					DiagnosticSignWarn = { bg = "NONE", fg = colors.yellow },
					DiagnosticSignInfo = { bg = "NONE", fg = colors.sky },
					DiagnosticSignHint = { bg = "NONE", fg = colors.teal },

					-- Tree-sitter context (keep background)
					TreesitterContext = { bg = colors.surface0 },
					TreesitterContextLineNumber = { bg = colors.surface0, fg = colors.overlay1 },

					-- Indent guides
					IndentBlanklineChar = { fg = colors.surface0 },
					IndentBlanklineContextChar = { fg = colors.surface2 },

					-- Which-key (keep background)
					WhichKey = { bg = colors.mantle },
					WhichKeyGroup = { bg = colors.mantle },
					WhichKeyDesc = { bg = colors.mantle },
					WhichKeySeperator = { bg = colors.mantle },
					WhichKeyFloat = { bg = colors.mantle },

					-- Lazy.nvim (keep background)
					LazyNormal = { bg = colors.mantle },

					-- Mason (keep background)
					MasonNormal = { bg = colors.mantle },
				}
			end,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = true,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
				telescope = {
					enabled = true,
				},
				lsp_trouble = true,
				which_key = true,
				indent_blankline = {
					enabled = true,
					colored_indent_levels = false,
				},
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
					},
					inlay_hints = {
						background = true,
					},
				},
			},
		})

		-- Set the colorscheme
		vim.cmd.colorscheme("catppuccin")
	end,
}

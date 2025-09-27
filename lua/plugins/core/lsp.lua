return {
	-- LSP Configuration
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
			"folke/neodev.nvim",
			"j-hui/fidget.nvim",
		},
		config = function()
			-- Setup Mason
			require("mason").setup({
				ui = {
					border = "rounded",
					check_outdated_packages_on_open = true,
				},
				max_concurrent_installers = 4,
			})
			-- Setup Mason LSPConfig
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					"ts_ls",
					"html",
					"cssls",
					"jsonls",
					"gopls",
					"rust_analyzer",
					"clangd",
				},
				automatic_installation = true,
			})
			-- Setup neodev before lspconfig
			require("neodev").setup()
			-- Setup fidget
			require("fidget").setup()
			-- LSP capabilities
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())
			-- LSP on_attach function
			local on_attach = function(client, bufnr)
				-- Enable completion triggered by <c-x><c-o>
				vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
				-- LSP keymaps
				local opts = { buffer = bufnr, silent = true }
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "gI", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
				vim.keymap.set("n", "<leader>ds", vim.lsp.buf.document_symbol, opts)
				vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts)
			end
			-- Setup LSP servers
			-- Lua LSP
			vim.lsp.config.lua_ls = {
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					Lua = {
						completion = { callSnippet = "Replace" },
						diagnostics = { disable = { "missing-fields" } },
					},
				},
			}
			-- Python LSP
			vim.lsp.config.pyright = {
				capabilities = capabilities,
				on_attach = on_attach,
			}
			-- TypeScript/JavaScript LSP
			vim.lsp.config.ts_ls = {
				capabilities = capabilities,
				on_attach = on_attach,
			}
			-- HTML LSP
			vim.lsp.config.html = {
				capabilities = capabilities,
				on_attach = on_attach,
			}
			-- CSS LSP
			vim.lsp.config.cssls = {
				capabilities = capabilities,
				on_attach = on_attach,
			}
			-- JSON LSP
			vim.lsp.config.jsonls = {
				capabilities = capabilities,
				on_attach = on_attach,
			}
			-- Go LSP
			vim.lsp.config.gopls = {
				capabilities = capabilities,
				on_attach = on_attach,
				cmd = { "gopls" },
				filetypes = { "go", "gomod", "gowork", "gotmpl" },
				root_dir = vim.fs.root(0, { "go.work", "go.mod", ".git" }),
			}
			-- Rust LSP
			vim.lsp.config.rust_analyzer = {
				capabilities = capabilities,
				on_attach = on_attach,
			}
			-- C/C++ LSP
			vim.lsp.config.clangd = {
				capabilities = capabilities,
				on_attach = on_attach,
				cmd = { "clangd", "--background-index", "--clang-tidy" },
				filetypes = { "c", "cpp", "objc", "objcpp" },
				single_file_support = true,
			}
		end,
	},
}

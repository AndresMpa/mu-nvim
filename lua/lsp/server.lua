require("mason").setup({
	ui = {
		icons = {
			package_pending = "",
			package_installed = "",
			package_uninstalled = "",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = { "sumneko_lua" },
})

local mapping = require("../mapping/lsp")
require("mason-lspconfig").setup_handlers({
	-- Default configuration
	function(server_name)
		require("lspconfig")[server_name].setup({
			on_attach = mapping.on_attach,
			flags = mapping.lsp_flags,
		})
	end,
	-- Lua configuration
	["sumneko_lua"] = function()
		require("lspconfig").sumneko_lua.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
	end,
	-- JS/TS configuration
	["tsserver"] = function()
		require("lspconfig").tsserver.setup({
			init_options = {
				preferences = {
					disableSuggestions = true,
				},
			},
		})
	end,
})

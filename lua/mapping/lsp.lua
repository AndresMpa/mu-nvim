-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions

-- Options
local opts = { noremap = true, silent = true }

-- Waiting for Nvim team to release feature #21527
--https://github.com/neovim/neovim/pull/21527
--https://github.com/neovim/neovim/commit/572cd8031dd7c91ac9e17cbdfab16d87f1fed6b7
local toggleDiagnostic = function()
	if vim.diagnostic.is_disabled(0) then
		return vim.diagnostic.disable
	else
		return vim.diagnostic.enable
	end
end

vim.keymap.set("n", "mt", "<CMD>:TroubleToggle<CR>", opts)
vim.keymap.set("n", "mm", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "md", vim.diagnostic.disable, opts)
vim.keymap.set("n", "ma", vim.diagnostic.enable, opts)
--vim.keymap.set("n", "ma", toggleDiagnostic, opts)

vim.keymap.set("n", "mj", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "mk", vim.diagnostic.goto_next, opts)

local Maps = {}

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
function Maps.on_attach(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "M", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "mf", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "mr", vim.lsp.buf.references, bufopts)
	vim.keymap.set("n", "mD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "mca", vim.lsp.buf.code_action, bufopts)
	vim.keymap.set("n", "mi", vim.lsp.buf.implementation, bufopts)
	vim.keymap.set("n", "<C-M>", vim.lsp.buf.signature_help, bufopts)
end

Maps.lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}

return Maps

-- Options
local opts = { noremap = true, silent = true }
-- Set new keymap
local map = vim.api.nvim_set_keymap

-- Leader Key
vim.g.mapleader = " "
-- easymotion
map("n", "<Leader>ss", "<Plug>(easymotion-s2)", {})

-- bufferline
map("n", "<Leader>mk", ":BufferLineMoveNext<CR>", {})
map("n", "<Leader>mj", ":BufferLineMovePrev<CR>", {})

-- incsearch
map("n", "/", "<Plug>(incsearch-forward)", {})
map("n", "?", "<Plug>(incsearch-backward)", {})

-- NvimTree
map("n", "<leader>n", ":NvimTreeToggle<CR>", {})

-- Telescope
map("n", "<Leader>t", ":Telescope<CR>", {})
map("n", "<Leader>tf", ":Telescope fd<CR>", {})
map("n", "<Leader>tt", ":Telescope live_grep<CR>", {})
map("n", "<Leader>ts", ":Telescope grep_string<CR>", {})

-- vCoolor
map("n", "<Leader>r", ":VCoolIns ra<CR>", {})

-- vim-fugitive (git support)
map("n", "<Leader>gpl", ":Git pull<CR>", {})
map("n", "<Leader>gps", ":Git push<CR>", {})
map("n", "<Leader>gii", ":Git init<CR>", {})
map("n", "<Leader>gsh", ":Git show<CR>", {})
map("n", "<Leader>gbl", ":Git blame<CR>", {})
map("n", "<Leader>gc", ":Git commit<CR>", {})
map("n", "<Leader>gst", ":Git status<CR>", {})
map("n", "<Leader>gaa", ":Git add %<CR>", {})
map("n", "<Leader>gap", ":Git add % -p<CR>", {})
map("n", "<Leader>grv", ":Git remote -v<CR>", {})

-- Commands that need specification
map("n", "<Leader>gsw", ":Git switch<Space>", {})
map("n", "<Leader>gco", ":Git checkout<Space>", {})
map("n", "<Leader>gcb", ":Git checkout -b<Space>", {})

-- Custom action
map("n", "<Leader>gll", "<CMD>lua require('util.extention').HandleGitCustomActions(pull)<CR>", {})
map("n", "<Leader>gpp", "<CMD>lua require('util.extention').HandleGitCustomActions(push)<CR>", {})

-- To performe different actions
map("n", "<Leader>ggg", ":Git<Space>", {})

-- LSP motion
map("n", "K", "<CMD>vim.lsp.buf.hover()<CR>", opts)
map("n", "gd", "<CMD>vim.lsp.buf.definition()<CR>", opts)
map("n", "gr", "<CMD>vim.lsp.buf.references()<CR>", opts)
map("n", "gD", "<CMD>vim.lsp.buf.declaration()<CR>", opts)
map("n", "gi", "<CMD>vim.lsp.buf.implementation()<CR>", opts)

-- Auto save
map("n", "<leader>aw", ":ASToggle<CR>", {})

-- Formatter
map("n", "<leader>f", ":Format<CR>", {})

--[[map("n", "<C-k>", "<CMD>vim.lsp.buf.signature_help()<CR>", opts)]]
--[[map("n", "<space>ca", "<CMD>vim.lsp.buf.code_action()<CR>", opts)]]

-- Plugin manager
map("n", "<Leader>pi", ":PackerInstall<CR>", {})
map("n", "<Leader>pc", ":PackerClean<CR>", {})
map("n", "<Leader>pu", ":PackerSync<CR>", {})

-- Natives
map("n", "<Leader>w", ":w<CR>", {})
map("n", "<Leader>q", ":q!<CR>", {})
-- Replace
map("n", "<Leader>R", ":%s/_/_/gc", {})
map("n", "U", "<C-r>", {})
-- Tabs motion
map("n", "<Leader>k", ":bnext<CR>", {})
map("n", "<Leader>h", ":bdelete!<CR>", {})
map("n", "<Leader>j", ":bprevious<CR>", {})
map("n", "K", "<C-u>", {})
map("n", "J", "<C-d>", {})
-- Buffers control
map("n", "<Leader>H", ":%bd | e# | bd#<CR>", {})
-- Split control
map("n", "<Leader>vv", ":on<CR>", {})
map("n", "<Leader>vj", ":split<CR>", {})
map("n", "<Leader>vk", ":vsplit<CR>", {})
-- Window
map("n", "<Leader><", ':exe "resize " . (winheight(0) * 3/2)<CR>', {})
map("n", "<Leader>>", ':exe "resize " . (winheight(0) * 2/3)<CR>', {})
-- Folding
map("v", "f", "zf<CR>", {})
map("n", "f", "za<CR>", {})

-- Extentions
map("n", "<Leader>hh", "<CMD>lua require('util.extention').HelpMapping()<CR>", {})
map("n", "<Leader>x", "<CMD>lua require('util.extention').OpenFileServer()<CR>", {})

-- Terminal
map("n", "<C-t>", "<CMD>lua require('util.extention').OpenTerminal()<CR>", { noremap = true })

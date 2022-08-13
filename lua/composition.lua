-- SET UP

-- GREETER
require("setUp.greeter")

-- THEME
-- Nvim
require("scheme.material")
-- Bar
require("setUp.statusLine")

-- VISUAL HELP
-- Identation
require("setUp.identation")
-- Highlight
require("setUp.highligth")
-- Highlighter (theme)
require("colorizer").setup()

-- NAVIGATION
-- File manager
require("setUp.fileManager")
-- Multitab
require("setUp.buffer")

-- AUTOCOMPLETION
require("setUp.completion")

-- LSP
require("lsp")

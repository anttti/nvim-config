-- To install new plugins:
-- * Add to lua/packer-packages/init.lua
-- * Run :luafile %
-- * Run :PackerSync

require('packer-config')
require('packer-packages')
require('settings')
require('elixir')
require('nvim-treesitter-config')
require('nvim-tree-config')
require('nvim-csp-config')
require('mappings')

-- https://github.com/numToStr/Comment.nvim
require('Comment').setup()

require('telescope').load_extension('neoclip')

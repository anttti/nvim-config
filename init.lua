-- To install new plugins:
-- * Add to lua/packer-packages/init.lua
-- * Run :PackerInstall

require('settings')
require('mappings')
require('packer-config')
require('packer-packages')
require('elixir')
require('nvim-treesitter-config')
require('nvim-tree-config')
require('nvim-csp-config')

vim.cmd("colorscheme nordfox")

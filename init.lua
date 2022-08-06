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

-- Set colorscheme and Hop highlight colors
vim.cmd("colorscheme nordfox")
-- Hop highlight colors have to be set here, otherwise setting the colorscheme overrides them
vim.api.nvim_command('highlight HopNextKey  guifg=#ff007c gui=bold ctermfg=198 cterm=bold')
vim.api.nvim_command('highlight HopNextKey1 guifg=#00dfff gui=bold ctermfg=45 cterm=bold')
vim.api.nvim_command('highlight HopNextKey2 guifg=#2b8db3 ctermfg=33')
vim.api.nvim_command('highlight HopUnmatched guifg=#666666 guibg=bg guisp=#666666 ctermfg=242')

-- https://github.com/numToStr/Comment.nvim
require('Comment').setup()

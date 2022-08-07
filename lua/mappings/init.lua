--
-- Custom keymappings
--

vim.g.mapleader = ','

-- function map(mode, lhs, rhs, opts)
--     local options = { noremap = true }
--     if opts then
--         options = vim.tbl_extend("force", options, opts)
--     end
--     vim.api.nvim_set_keymap(mode, lhs, rhs, options)
-- end

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- :nohlsearch remove search highlights
map("n", "<Leader><Space>", ":nohlsearch<CR>", opts)
map("n", "<Leader>tt", ":NvimTreeToggle<CR>", opts)
map("n", "<Leader>tf", ":NvimTreeFocus<CR>", opts)

-- Hop
map("n", "<Leader>hw", ":HopWord<CR>", opts)
map("n", "<Leader>hl", ":HopLine<CR>", opts)

-- Telescope
map("n", "<Space><Space>", ":Telescope find_files<CR>", opts)
map("n", "<Leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<Leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<Leader>fh", ":Telescope help_tags<CR>", opts)
map("n", "<Leader>c", ":Telescope neoclip<CR>", opts)

-- BarBar
-- Move to previous/next
map('n', '<Space>,', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<Space>.', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<Space><', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<Space>>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<Space>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<Space>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<Space>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<Space>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<Space>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<Space>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<Space>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<Space>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<Space>9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<Space>0', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<Space>p', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<Space>c', '<Cmd>BufferClose<CR>', opts)
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Hop highlight colors have to be set here, otherwise setting the colorscheme overrides them
vim.api.nvim_command('highlight HopNextKey  guifg=#ff007c gui=bold ctermfg=198 cterm=bold')
vim.api.nvim_command('highlight HopNextKey1 guifg=#00dfff gui=bold ctermfg=45 cterm=bold')
vim.api.nvim_command('highlight HopNextKey2 guifg=#2b8db3 ctermfg=33')
vim.api.nvim_command('highlight HopUnmatched guifg=#666666 guibg=bg guisp=#666666 ctermfg=242')


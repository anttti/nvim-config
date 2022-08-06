--
-- Custom keymappings
--

-- Functional wrapper for mapping custom keybindings
vim.g.mapleader = ','

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- :nohlsearch remove search highlights
map("n", "<Leader><Space>", ":nohlsearch<CR>", { silent = true })
map("n", "<Leader>tt", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<Leader>tf", ":NvimTreeFocus<CR>", { silent = true })
map("n", "<Leader>hw", ":HopWord<CR>", { silent = true })
map("n", "<Leader>hl", ":HopLine<CR>", { silent = true })

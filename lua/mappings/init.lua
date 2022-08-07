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

-- Hop
map("n", "<Leader>hw", ":HopWord<CR>", { silent = true })
map("n", "<Leader>hl", ":HopLine<CR>", { silent = true })

-- Telescope
map("n", "<Leader>ff", ":Telescope find_files<CR>", { silent = true })
map("n", "<Leader>fg", ":Telescope live_grepCR>", { silent = true })
map("n", "<Leader>fb", ":Telescope buffers<CR>", { silent = true })
map("n", "<Leader>fh", ":Telescope help_tags<CR>", { silent = true })

--
-- Syntax highlighting
--

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "elixir", "eex", "heex", "tsx", "typescript" },
  sync_install = false,
  ignore_install = { },
  highlight = {
    enable = true,
    disable = { },
  },
}

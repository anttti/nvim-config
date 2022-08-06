--
-- Install plugins
--
require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}

  use {'neovim/nvim-lspconfig'}

  -- cmp framework for auto-completion support
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}

  -- you need a snippet engine for snippet support
  -- here I'm using vsnip which can load snippets in vscode format
  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/cmp-vsnip'}

  -- Syntax highlighting
  use {'nvim-treesitter/nvim-treesitter'}

  -- File browser
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly'
  }

  -- Color theme
  use {"EdenEast/nightfox.nvim"}

  use {
    'phaazon/hop.nvim',
    branch = 'v2',
    config = function()
      require'hop'.setup {}
    end
  }

  use {'numToStr/Comment.nvim'}
end)



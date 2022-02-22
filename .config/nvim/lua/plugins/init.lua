return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'RRethy/nvim-base16',
    config = require('plugins/config/nvim-base16'),
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = require('plugins/config/nvim-treesitter'),
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = require('plugins/config/lualine'),
  }
  use {
    'akinsho/bufferline.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      'moll/vim-bbye',
    },
    config = require('plugins/config/bufferline'),
  }
  use {
      'kyazdani42/nvim-tree.lua',
      requires = { 'kyazdani42/nvim-web-devicons' },
      config = require('plugins/config/nvim-tree'),
  }
  use {
    'folke/which-key.nvim',
    config = require('plugins/config/which-key'),
  }
end)

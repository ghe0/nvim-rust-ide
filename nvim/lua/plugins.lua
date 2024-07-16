vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'airblade/vim-gitgutter'
  use 'rust-lang/rust.vim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'vyperlang/vim-vyper'
  use 'ellisonleao/gruvbox.nvim'
  use 'j-hui/fidget.nvim'
  use 'savq/melange-nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'}, { 'BurntSushi/ripgrep'} }
  }
end)


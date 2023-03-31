vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'airblade/vim-gitgutter'
  use 'rust-lang/rust.vim'
  use 'rvmelkonian/move.vim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'jacoborus/tender.vim'
  use 'vyperlang/vim-vyper'
  use 'nvim-tree/nvim-tree.lua'
  use 'ellisonleao/gruvbox.nvim'
  use 'j-hui/fidget.nvim'
  use 'savq/melange-nvim'
end)


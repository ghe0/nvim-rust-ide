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
  use "savq/melange"
  use 'jacoborus/tender.vim'
  use 'vyperlang/vim-vyper'
  use 'kyazdani42/nvim-tree.lua'
end)


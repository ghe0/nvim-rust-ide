vim.opt.mouse = ""
vim.opt.number = true
vim.opt.laststatus = 2
vim.opt.wildmode = "longest,list"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.foldmethod = "syntax"
vim.opt.foldnestmax = 1
vim.opt.termguicolors = true

vim.cmd [[hi Folded ctermbg=232 ctermfg=33]]
vim.cmd [[autocmd BufWritePost * GitGutter]]
vim.cmd [[autocmd BufNewFile,BufRead *.fish set syntax=bash]]
vim.cmd [[highlight SignColumn ctermbg=none]]
vim.cmd [[highlight GitGutterAdd    ctermfg=12]]
vim.cmd [[highlight GitGutterChange ctermfg=13]]
vim.cmd [[highlight GitGutterDelete ctermfg=1]]
vim.cmd [[let g:gitgutter_set_sign_backgrounds = 1]]

vim.api.nvim_set_keymap( 'n', '<C-Up>', '<C-W><C-K>', {noremap = true})
vim.api.nvim_set_keymap( 'n', '<C-Down>', '<C-W><C-J>', {noremap = true})
vim.api.nvim_set_keymap( 'n', '<C-Right>', '<C-W><C-L>', {noremap = true})
vim.api.nvim_set_keymap( 'n', '<C-Left>', '<C-W><C-H>', {noremap = true})
vim.api.nvim_set_keymap( 'n', '<F2>', ':set invnu <CR>', {noremap = true})
vim.api.nvim_set_keymap( 'n', '<F3>', ':set mouse=a <CR>', {noremap = true})
vim.api.nvim_set_keymap( 'n', '<F4>', ':set mouse="" <CR>', {noremap = true})
vim.api.nvim_set_keymap( 'n', '<F5>', ':terminal % <CR>', {noremap = true})
vim.api.nvim_set_keymap( 'n', '<F5>', ':! cargo run --quiet <CR>', {noremap = true})
vim.api.nvim_set_keymap( 'n', '<F6>', ':w <CR>', {noremap = true})
vim.api.nvim_set_keymap( 'i', '<F6>', '<ESC> :w <CR>', {noremap = true})
vim.api.nvim_set_keymap( 'n', '<F7>', ':! cargo test <CR>', {noremap = true})


require('plugins')

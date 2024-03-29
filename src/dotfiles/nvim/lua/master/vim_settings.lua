-- [[Vim settings]]

vim.cmd("set clipboard+=unnamedplus") -- Use System Clipboard
vim.opt.fillchars = {eob = " "}


-- [[ Changes to make vim look simpler ]]
vim.cmd([[ set shortmess+=I ]]) -- Remove Intro text when entering vim
vim.cmd("set noshowmode")
-- vim.cmd("set noshowcmd")
vim.cmd("set noruler")
vim.cmd("set laststatus=-")
vim.cmd("set statusline=0")
-- []

vim.cmd([[set number]])

vim.cmd([[set scrolloff=5]]) -- Smooth scroll

vim.o.background = "dark" -- or "light" for light mode

vim.cmd([[set formatoptions-=cro]]) -- Deactivating autocomment

vim.cmd([[autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]])

vim.cmd([[ autocmd BufwritePost * %s/\s\+$//e ]]) -- Remove useless spaces when saving
-- [[Mappings]]

-- Move cursor in Insert mode
vim.keymap.set('i','<C-k>','<C-o>gk')
vim.keymap.set('i','<C-h>','<Left>')
vim.keymap.set('i','<C-l>','<Right>')
vim.keymap.set('i','<C-j>','<C-o>gj')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n','<leader><leader>',':w!<CR>')
vim.keymap.set('n','<leader>q',':wqa!<CR>')
vim.keymap.set('n','<leader>e', ':Neotree toggle right<CR>')
vim.keymap.set('n', '<leader>o', '<C-W>w')
vim.cmd("colorscheme gruvbox")

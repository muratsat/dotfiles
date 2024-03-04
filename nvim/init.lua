-- hello world how are you
local opt = vim.opt
local g = vim.g

vim.cmd [[colorscheme vim]]

opt.clipboard = "unnamedplus"

opt.showmode = true

opt.clipboard = "unnamedplus"
-- opt.cursorline = true

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = true

-- disable nvim intro
opt.shortmess:append "sI"

opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 200
opt.undofile = true

opt.relativenumber = true
opt.scrolloff = 8
opt.hlsearch = false
opt.incsearch = true
opt.backspace = [[indent,eol,start]]


vim.api.nvim_set_keymap('i', '<C-H>', '<C-W>', {noremap = true})
vim.api.nvim_set_keymap('c', '<C-H>', '<C-W>', {noremap = true})

vim.api.nvim_set_keymap('c', '<C-k>', '<Up>', {noremap = true})
vim.api.nvim_set_keymap('c', '<C-j>', '<Down>', {noremap = true})
vim.api.nvim_set_keymap('c', '<C-h>', '<Left>', {noremap = true})
vim.api.nvim_set_keymap('c', '<C-l>', '<Right>', {noremap = true})

vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true})

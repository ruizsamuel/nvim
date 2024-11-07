-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable Spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set({ 'n', 'v' }, ' ', '<Nop>', { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- Save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- Delete single character without copying into register
vim.keymap.set({'n', 'v'}, 'x', '"_x', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Buffers
vim.keymap.set('n', '<S-Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<C-q>', ':bp<bar>sp<bar>bn<bar>confirm bd<CR>', opts)

-- Window splitting
vim.keymap.set('n', '<leader>ll', ':vsplit<CR>', opts)
vim.keymap.set('n', '<leader>jj', ':split<CR>', opts)
vim.keymap.set('n', '<A-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<A-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<A-Right>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<A-Left>', ':vertical resize +2<CR>', opts)

-- Window Swithing
vim.keymap.set('n', '<A-l>', '<C-w>w', opts)
vim.keymap.set('n', '<A-h>', '<C-w>h', opts)

-- Open Neotree
vim.keymap.set('n', '<leader>ee', ':Neotree<CR>', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)


-- Custom command to replace Windows EOL Characters (WSL)
vim.api.nvim_create_user_command('RWEOL', function()
  vim.cmd([[%s/\r//g]])
end, {})

vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('i', 'jk', '<ESC>', { desc = 'Exit insert mode w/ [jk]' })

keymap.set('n', '<Esc>', '<cmd>nohl<CR>')

keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

keymap.set('n', '<leader>sv', '<C-w>v', { desc = '[S]plit window [V]ertically' }) 
keymap.set('n', '<leader>sh', '<C-w>s', { desc = '[S]plit window [H]orizontally' }) 
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make [S]plits [E]qual size' }) 
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current [S]plit [X]' })

keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = '[T]ab [O]pen' })
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = '[Tab] [C]lose' })
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = '[T]ab [N]ew' })
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = '[T]ab [P]revious' })
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' })

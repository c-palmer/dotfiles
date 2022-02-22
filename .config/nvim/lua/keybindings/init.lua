local map = vim.api.nvim_set_keymap
local unmap = vim.api.nvim_del_keymap

-- map('n', '<space>', '<nop>', { noremap = true, silent = false })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- stay in normal mode when adding lines
map('n', 'o', 'o<Esc>', { noremap = true, silent = false })
map('n', 'O', 'O<Esc>', { noremap = true, silent = false })

-- quick up and down movement when holding down ctrl
map('n', '<C-j>', '3<C-e>jjj', { noremap = true, silent = false })
map('n', '<C-k>', '3<C-y>kkk', { noremap = true, silent = false })

-- scroll up and down while in insert mode
map('i', '<C-j>', '<Esc>ji', { noremap = true, silent = false })
map('i', '<C-k>', '<Esc>ki', { noremap = true, silent = false })

-- terminal keybindings
-- map('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = false })
map('t', '<C-f>', '<C-\\><C-n>:set buflisted | only<CR>i', { noremap = true, silent = false })

-- used for debugging
-- map('n', '<leader>RR', ':lua require("custom_commands").is_last_buffer()<CR>', { noremap = true, silent = true })

-- i don't want to develop this habbit
-- remap ; to : so you don't have to press shift
-- map('n', ';', ':', {noremap = true, silent = false})

-- stay in visual mode when tabbing blocks of code for easy repeat
-- this is not needed, just use . to repeat the indentation command
-- map('v', '<', '<gv', { noremap = true, silent = false })
-- map('v', '>', '>gv', { noremap = true, silent = false })

-- compile, run, and display output of C programs
-- map(
--   'n', '<leader>c',
--   ':!gcc % && echo "" && echo "---(compiler ↑)---(program ↓)---" && echo "" && ./a.out<CR>',
--   { noremap = true, silent = true }
-- )

------------------------
-- PLUGIN KEYBINDINGS --
------------------------

-- bufferline
  -- mapping for moving left and right between buffertabs
  -- unmap('n', '<tab>')
  map('n', '<tab>', '<nop>', { noremap = true, silent = false })

  map('n', '<S-l>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
  map('n', '<S-h>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

  -- mapping for moving the buffertabs themselves left and right through the buffertablist
  map('n', '<leader>L', ':BufferLineMoveNext<CR>', { noremap = true, silent = true })
  map('n', '<leader>H', ':BufferLineMovePrev<CR>', { noremap = true, silent = true })

  map('n', '<tab>p', ':ls!<CR>', { noremap = true, silent = false })
  map('n', '<tab>g', ':ls!<CR>:b<space>', { noremap = true, silent = false })

  -- used in an open buffer: saves and closes the buffer
  -- used in a readonly buffer: closes the buffer without saving
  -- used in an empty buffer (when other buffertabs are open): closes vim
  -- used in an empty buffer (and it is the last buffer): closes vim
  -- map('n', 'ZZ', ':lua require("custom_commands").smart_ZZ()<CR>', { noremap = true, silent = true })
  -- map('n', '<tab>ww', ':w | Bwipeout<CR>', { noremap = true, silent = true })
  -- map('n', '<leader><tab>ww', ':Bwipeout<CR>', { noremap = true, silent = true })
  map('n', 'WW', ':w | Bwipeout<CR>', { noremap = true, silent = true })
  map('n', '<leader>WW', ':Bwipeout<CR>', { noremap = true, silent = true })

-- nvim tree
  -- map('n', '<leader>b', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
  map('n', '<C-b>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})





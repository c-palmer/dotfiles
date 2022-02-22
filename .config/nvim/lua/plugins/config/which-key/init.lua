require("which-key").setup {
}

require('which-key').register({
  q = {':q<CR>', 'Quit'},
  w = {':w<CR>', 'Save'},
  x = {':bdelete<CR>', 'Close'},
  -- %< is the file name with the extension removed
  -- c = {':w | vsplit | terminal gcc % -o %:t:r; echo ""; echo "--(compiler ↑)--(program ↓)--"; echo ""; ./%:t:r<CR>', 'Compile and Run C Program'},
  -- c = {
  --   [[:split | execute 'terminal gcc % -o %:t:r; echo ""; echo "--(compiler ↑)--(program ↓)--"; echo ""; ./%:t:r<CR>' | set buflisted | only]],
  --   'Compile and Run C Program'},
  c = {
    name = '+Compile and Run C Program',
    f = {':lua require("custom_commands").c_compile("full")<CR>', 'Full Screen Terminal'},
    s = {':lua require("custom_commands").c_compile("split")<CR>', 'Horizontal Split Terminal'},
    v = {':lua require("custom_commands").c_compile("vsplit")<CR>', 'Vertical Split Terminal'},
  },
  -- g = {':split | terminal <C-\\><C-n><CR>', 'Terminal Test'},
  -- <C-\\><C-n>:set buflisted | only<CR>i 
  f = {
    name = '+Telescope',
    f = {':Telescope find_files<CR>', 'Telescope Find Files'},
    g = {':Telescope live_grep<CR>', 'Telescope Live Grep'},
  },
  --ff = {':Telescope find_files<CR>', 'Telescope Find Files'},
  --fg = {':Telescope live_grep<CR>', 'Telescope Live Grep'},
}, {
  prefix = '<leader>',
})

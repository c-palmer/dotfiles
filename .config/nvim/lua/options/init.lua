-- maybe needed for indentation?
-- vim.cmd('filetype plugin indent on')

-- shortmess (short message) has something to do with user input at the command prompt
-- look into all the options with :tab h shortmess
-- vim.o.shortmess = vim.o.shortmess .. 'c'
vim.cmd('autocmd TermOpen * startinsert')

-- set height of pop up menu
vim.o.pumheight = 10

-- set correct file encoding
vim.o.fileencoding = 'utf-8'

-- set height of command area at bottom of screen
vim.o.cmdheight = 2

-- set better default window split behavior
vim.o.splitbelow = true
vim.o.splitright = true

-- maybe needed for all terminal colors?
vim.opt.termguicolors = true

-- something to do with hidden text symbols
vim.o.conceallevel = 0

-- always show tabs at top of screen
-- vim.o.showtabline = 2

-- disable writing of backup files
-- vim.o.backup = false
-- vim.o.writebackup = false

-- syncs vim clipboard with system clipboard
-- pbcopy needed for mac, xclip for linux
vim.o.clipboard = 'unnamedplus'

-- disable highlighting of search results
vim.o.hlsearch = false

-- ignore case while searching
vim.o.ignorecase = true

-- keeps a 3 line buffer between the line the cursor is
-- on and the top and bottom of the screen
-- vim.o.scrolloff = 3

-- idk what this does
-- vim.o.sidescrolloff = 5

-- enables mouse usage
vim.o.mouse = 'a'

-- disable text wrapping
-- vim.wo.wrap = false

-- set line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- highlight the row the cursor is on
-- vim.o.cursorline = true

-- adds a column to the left of the line numbers for debug symbols
vim.o.signcolumn = 'yes'

-- convert tabs to number of spaces
local spaces_in_tabs = 2
vim.o.softtabstop = spaces_in_tabs
vim.o.tabstop = spaces_in_tabs
vim.bo.tabstop = spaces_in_tabs
vim.o.shiftwidth = spaces_in_tabs
vim.bo.shiftwidth = spaces_in_tabs
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true

-- displays vertical bar at 80 chars
vim.o.colorcolumn = '80'

-- custom status line
-- vim.wo.statusline = 'hey'

-- change line number color when entering and exiting insert mode
-- vim.api.nvim_exec([[autocmd InsertEnter * exe ":hi LineNr guifg=#a1b56c"]], false)
-- vim.api.nvim_exec([[autocmd InsertLeave * exe ":hi LineNr guifg=#7cafc2"]], false)

-- ModeChanged will be available in future release of neovim
-- change line number color when entering and exiting visual mode
-- vim.api.nvim_exec([[autocmd ModeChanged *:v exe ":hi LineNr guifg=#ffa1e0"]], false)
-- vim.api.nvim_exec([[autocmd ModeChanged v:* exe ":hi LineNr guifg=#7cafc2"]], false)

-- doesn't work
-- change line number color when entering and exiting cmd mode
-- vim.api.nvim_exec([[autocmd CmdlineEnter * exe ":hi LineNr guifg=#f7ca88"]], false)
-- vim.api.nvim_exec([[autocmd CmdlineLeave * exe ":hi LineNr guifg=#7cafc2"]], false)

------------------------
-- PLUGIN KEYBINDINGS --
------------------------

-- bufferline
  -- enable hidden buffers
  vim.o.hidden = true

-- lualine
  vim.o.showmode = false

-- which key
-- set key delay to 0 so which-key shows up immediately
vim.o.updatetime = 300
vim.o.timeoutlen = 300


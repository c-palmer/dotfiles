local tree_cb = require('nvim-tree.config').nvim_tree_callback

vim.cmd([[
  let g:nvim_tree_quit_on_open = 1
  let g:nvim_tree_git_hl = 1
  let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }
  let g:nvim_tree_highlight_opened_files = 3
  "let g:nvim_tree_indent_markers = 1
  let g:nvim_tree_root_folder_modifier = ":h:t"
]])

require('nvim-tree').setup({
  open_on_setup       = true,
  -- won't auto open tree when opening these filetypes
  -- ignore_ft_on_setup  = {},
  auto_close          = true,
  open_on_tab         = false,
  hijack_cursor       = true,
  -- update_cwd          = false,
  -- update_to_buf_dir   = {
  --   enable = true,
  --   auto_open = true,
  -- },
  -- diagnostics = {
  --   enable = true,
  --   icons = {
  --     hint = '',
  --     info = '',
  --     warning = '',
  --     error = '',
  --   }
  -- },
  -- update_focused_file = {
  --   enable      = false,
  --   update_cwd  = false,
  --   ignore_list = {}
  -- },
  
  -- idk what this does
  -- system_open = {
  --   cmd  = nil,
  --   args = {}
  -- },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {
        -- add l and h to list so you don't have to reach for space to open file
        { key = {'<CR>', 'o', '<2-LeftMouse>', 'l', 'h'}, cb = tree_cb('edit') },
      }
    },
    number = false,
    relativenumber = false,
    signcolumn = 'yes'
  },
  trash = {
    cmd = 'trash',
    require_confirm = true
  }
})

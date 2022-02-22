local colors = require('plugins/config/nvim-base16')

local color_names = {
  black   = colors.base00,
  grey1   = colors.base01,
  grey2   = colors.base02,
  grey3   = colors.base03,
  grey4   = colors.base04,
  grey5   = colors.base05,
  grey6   = colors.base06,
  white   = colors.base07,
  red     = colors.base08,
  orange  = colors.base09,
  yellow  = colors.base0A,
  green   = colors.base0B,
  pink    = colors.base0C,
  blue    = colors.base0D,
  mauve   = colors.base0E,
  brown   = colors.base0F,
}


require('bufferline').setup({
  options = {
    numbers = 'buffer_id',

    -- Bdelete is provided by vim-bbye (better version of bdelete)
    close_command = 'Bdelete! %d',
    right_mouse_command = 'Bdelete! %d',
    left_mouse_command = 'buffer %d',

    -- pass a function to determine the format of the name shown on the buffer
    -- this function returns the last two sections of the file's path
    name_formatter = function(buf)
      -- local t = {}

      -- for str in string.gmatch(buf.path, '([^/]+)') do
      --   table.insert(t, str)
      -- end

      -- return t[#t - 1] .. '/' .. t[#t]
      -- local test_var = tostring(#t)
      return vim.fn.fnamemodify(buf.path, ':p:h:t') .. '/' .. vim.fn.fnamemodify(buf.path, ':t')
    end,

    max_name_length = 35,
    max_prefix_length = 15,
    tab_size = 20,
    diagnostics = false,

    -- offsets buffers by the width of the nvimtree buffer
    offsets = { { filetype = 'NvimTree', text = 'NvimTree', highlight = 'BufferLineBackground', text_align = 'center', padding = 1 } },

    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,

    -- needs sessionoptions+=globals set for this to work
    -- persist_buffer_sort = true,

    separator_style = "slant", -- | "thick" | "thin" | { 'any', 'any' },

    -- make all tabs equal width even if the text can't fit
    -- enforce_regular_tabs = false | true,

    always_show_bufferline = true, -- | false,

  },
  highlights = {
    fill = {
      guibg = color_names.grey1,
    },
    background = {
      guifg = color_names.white,
      guibg = color_names.grey1,
    },
    tab_close = {
      guifg = color_names.white,
      guibg = color_names.grey1,
    },
    close_button = {
      guifg = color_names.white,
      guibg = color_names.grey1,
    },
    close_button_visible = {
      -- guifg = ,
      guibg = color_names.black,
    },
    -- close_button_selected = {
    --   guibg = color_names.black,
    -- },
    separator = {
      guifg = color_names.grey1,
      guibg = color_names.grey1,
    },
    separator_visible = {
      guifg = color_names.grey1,
      guibg = color_names.black,
    },
    separator_selected = {
      guifg = color_names.grey1,
      guibg = color_names.black,
    },
    modified = {
      guifg = color_names.green,
      guibg = color_names.grey1,
    },
    modified_visible = {
      guifg = color_names.green,
      guibg = color_names.black,
    },
    modified_selected = {
      -- guifg = color_names.green,
      -- guibg = color_names.black,
    },
  },
})




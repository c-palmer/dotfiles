-- lualine does not have a way of reading theme files outside of the plugin directory
-- so I make a theme in its theme directory called personal_theme.lua that
-- has a reference to this file

local base16_colors = require('plugins/config/nvim-base16')

local colors = {
  black   = base16_colors.base00,
  grey1   = base16_colors.base01,
  grey2   = base16_colors.base02,
  grey3   = base16_colors.base03,
  grey4   = base16_colors.base04,
  grey5   = base16_colors.base05,
  grey6   = base16_colors.base06,
  white   = base16_colors.base07,
  red     = base16_colors.base08,
  orange  = base16_colors.base09,
  yellow  = base16_colors.base0A,
  green   = base16_colors.base0B,
  pink    = base16_colors.base0C,
  blue    = base16_colors.base0D,
  mauve   = base16_colors.base0E,
  brown   = base16_colors.base0F,
}

return {
  normal = {
    a = { fg = colors.black, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.white, bg = colors.grey3, gui = 'bold' },
    c = { fg = colors.white, bg = colors.grey1, gui = 'bold' },
  },
  insert = { a = { fg = colors.black, bg = colors.green, gui = 'bold' } },
  visual = { a = { fg = colors.black, bg = colors.pink, gui = 'bold' } },
  replace = { a = { fg = colors.black, bg = colors.red, gui = 'bold' } },
  command = { a = { fg = colors.black, bg = colors.mauve, gui = 'bold' } },
  inactive = {
    a = { fg = colors.black, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.white, bg = colors.grey3, gui = 'bold' },
    c = { fg = colors.white, bg = colors.grey1, gui = 'bold' },
  },
}

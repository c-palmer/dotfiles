local nvim_base16 = require('base16-colorscheme')

-- original base16 with shades of perfect grey
-- colors = {
--           --black               grey                grey                grey
--   base00 = '#16161d', base01 = '#282828', base02 = '#383838', base03 = '#585858',
--           --grey                grey                grey                white
--   base04 = '#b8b8b8', base05 = '#d8d8d8', base06 = '#e8e8e8', base07 = '#ffffff',
--           --red                 orange              yellow              green
--   base08 = '#ab4642', base09 = '#dc9656', base0A = '#f7ca88', base0B = '#a1b56c',
--           --pink                blue                mauve               brown
--   base0C = '#ffa1e0', base0D = '#7cafc2', base0E = '#b75eb4', base0F = '#a16946',
-- }

-- original base16 colors but blue shifted greys
-- swapped grey5 and grey6 because treesitter uses grey5 a lot and its too dark
colors = {
          --black (eigengrau)   grey1               grey2               grey3
  base00 = '#16161d', base01 = '#363644', base02 = '#535364', base03 = '#767689',
          --grey4               grey6               grey5               white
  base04 = '#9898ac', base05 = '#d9d9e6', base06 = '#bbbbca', base07 = '#d9d9e6',
          --red                 orange              yellow              green
  base08 = '#ab4642', base09 = '#dc9656', base0A = '#f7ca88', base0B = '#a1b56c',
          --pink                blue                mauve               brown
  base0C = '#ffa1e0', base0D = '#7cafc2', base0E = '#b75eb4', base0F = '#a16946',
}

nvim_base16.setup(colors)

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

-- vim.cmd(('hi Normal guifg=%s guibg=%s gui=NONE guisp=NONE'):format(colors.base07, colors.base00))
-- vim.cmd(('hi LineNr guifg=%s guibg=%s gui=NONE guisp=NONE'):format(colors.base0E, colors.base00))

local hi = nvim_base16.highlight

-- most of these changes are just to make white text actually bright white
-- vim editor colors
hi.Normal = { guifg = color_names.grey5, guibg = color_names.black }
hi.Folded = { guifg = color_names.blue, guibg = color_names.black }
hi.Visual = { guibg = color_names.grey1 }
hi.LineNr = { guifg = color_names.blue }
hi.VertSplit = { guifg = color_names.grey2 }
hi.Tabline = { guifg = color_names.grey5 }
hi.TablineSel = { guifg = color_names.blue, guibg = color_names.black }

-- syntax highlighting
hi.Comment = { guifg = color_names.grey3, gui = 'bold,italic' }
-- hi.Operator = { guifg = color_names.white }

-- spell highlighting
-- hi.DiagnosticInfo = { guifg = color_names.white }

-- treesitter highlighting
-- hi.TSField = { guifg = color_names.white }
-- hi.TSNone = { guifg = color_names.white }
-- hi.TSOperator = { guifg = color_names.white }
-- hi.TSParameter = { guifg = color_names.white }
-- hi.TSParameterReference = { guifg = color_names.white }
-- hi.TSProperty = { guifg = color_names.white }
-- hi.TSPunctBracket = { guifg = color_names.white }
-- hi.TSPunctSpecial = { guifg = color_names.white }
-- hi.TSText = { guifg = color_names.white }

-- hi.NormalFloat = { guifg = color_names.white }
-- hi.FloatBorder = { guifg = color_names.white }
-- hi.NormalNC = { guifg = color_names.white }

-- hi.BufferLineFill = { guibg = color_names.white }

-- hi.LspDiagnosticsDefaultError = 'DiagnosticError' -- Link to another group

-- vim.cmd('colorscheme base16-default-dark')

-- to test colorscheme in :so $VIMRUNTIME/syntax/hitest.vim
hi.Base00 = { guifg = colors.base00, guibg = color_names.black }
hi.Base01 = { guifg = colors.base01, guibg = color_names.black }
hi.Base02 = { guifg = colors.base02, guibg = color_names.black }
hi.Base03 = { guifg = colors.base03, guibg = color_names.black }
hi.Base04 = { guifg = colors.base04, guibg = color_names.black }
hi.Base05 = { guifg = colors.base05, guibg = color_names.black }
hi.Base06 = { guifg = colors.base06, guibg = color_names.black }
hi.Base07 = { guifg = colors.base07, guibg = color_names.black }
hi.Base08 = { guifg = colors.base08, guibg = color_names.black }
hi.Base09 = { guifg = colors.base09, guibg = color_names.black }
hi.Base0A = { guifg = colors.base0A, guibg = color_names.black }
hi.Base0B = { guifg = colors.base0B, guibg = color_names.black }
hi.Base0C = { guifg = colors.base0C, guibg = color_names.black }
hi.Base0D = { guifg = colors.base0D, guibg = color_names.black }
hi.Base0E = { guifg = colors.base0E, guibg = color_names.black }
hi.Base0F = { guifg = colors.base0F, guibg = color_names.black }

return colors

require('nvim-treesitter.configs').setup({
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = {"bash", "c", "cmake", "cpp", "css", "html", "java",
                      "javascript", "json", "json5", "lua", "make",
                      "markdown", "php", "python", "r", "regex", "rust",
                      "typescript", "vim", "yaml"},

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- List of parsers to ignore installing
  ignore_install = {},

  highlight = {
    -- `false` will disable the whole extension
    enable = false,

    -- list of language that will be disabled
    disable = {},

    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      -- ["foo.bar"] = "Identifier",
      -- ["field"] = "Normal",
      -- ["field"] = "Normal",
      -- ["none"] = "Normal",
      -- ["operator"] = "Normal",
      -- ["parameter"] = "Normal",
      -- ["parameterreference"] = "Normal",
      -- ["property"] = "Normal",
      -- ["punctuation.bracket"] = "Normal",
      -- -- ["punctspecial"] = "Normal",
      -- ["text"] = "Normal",
      ["comment"] = "Comment",
    },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
})

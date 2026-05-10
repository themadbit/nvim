local highlight = {
  'IndentRed',
  'IndentYellow',
  'IndentBlue',
  'IndentOrange',
  'IndentGreen',
  'IndentViolet',
  'IndentCyan',
}

local indent_colors_enabled = tostring(vim.env.NVIM_INDENT_COLOR or ''):lower() == 'true'

local function set_indent_highlights()
  vim.api.nvim_set_hl(0, 'IndentRed', { fg = '#E06C75' })
  vim.api.nvim_set_hl(0, 'IndentYellow', { fg = '#E5C07B' })
  vim.api.nvim_set_hl(0, 'IndentBlue', { fg = '#61AFEF' })
  vim.api.nvim_set_hl(0, 'IndentOrange', { fg = '#D19A66' })
  vim.api.nvim_set_hl(0, 'IndentGreen', { fg = '#98C379' })
  vim.api.nvim_set_hl(0, 'IndentViolet', { fg = '#C678DD' })
  vim.api.nvim_set_hl(0, 'IndentCyan', { fg = '#56B6C2' })
end

return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
    config = function(_, opts)
      if indent_colors_enabled then
        opts.indent = opts.indent or {}
        opts.indent.highlight = highlight

        opts.scope = opts.scope or {}
        opts.scope.highlight = highlight

        set_indent_highlights()
        vim.api.nvim_create_autocmd('ColorScheme', {
          callback = set_indent_highlights,
        })
      end

      require('ibl').setup(opts)
    end,
  },
}

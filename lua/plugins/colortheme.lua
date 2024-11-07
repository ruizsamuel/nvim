return {
  'projekt0n/github-nvim-theme',
  lazy = false,
  priority = 1000,
  config = function()
    require('github-theme').setup({
      options = {
        -- transparent = true,
      }
    })

    vim.cmd('colorscheme github_dark')
    vim.cmd('set cursorline')

    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "#FFCC00" })
    vim.cmd [[highlight Whitespace guifg=#FF0000]]
  end,
}

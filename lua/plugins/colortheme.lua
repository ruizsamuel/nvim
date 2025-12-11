return {
  'tinted-theming/tinted-vim',
  lazy = false,
  priority = 1000,
  config = function()

    vim.cmd('colorscheme base16-ayu-dark')
    vim.cmd('set cursorline')

    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "#FFCC00" })
    vim.cmd [[highlight Whitespace guifg=#FF0000]]

    -- Para Neotree
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE" }) -- si hay buffer no activo
    vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { bg = "#000000", fg = "#000000" })

  end,
}

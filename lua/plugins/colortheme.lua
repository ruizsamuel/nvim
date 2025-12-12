return {
  'catppuccin/nvim',
  lazy = false,
  priority = 1000,
  name = 'catppuccin',
  config = function()
    require('catppuccin').setup({
      flavour = 'mocha', -- latte, frappe, macchiato, mocha
      transparent_background = true,
      integrations = {
        neotree = true,
        treesitter = true,
        telescope = true,
        lsp_saga = true,
        cmp = true,
        buffer_line = true,
      },
    })

    vim.cmd('colorscheme catppuccin')
    vim.cmd('set cursorline')

    -- Resaltado mejorado para keywords
    vim.api.nvim_set_hl(0, '@keyword', { fg = "#CBA6F7", bold = true })
    vim.api.nvim_set_hl(0, '@keyword.function', { fg = "#CBA6F7", bold = true })
    vim.api.nvim_set_hl(0, '@keyword.return', { fg = "#CBA6F7", bold = true })
    vim.api.nvim_set_hl(0, '@type', { fg = "#F5C2E7" })
    vim.api.nvim_set_hl(0, '@function', { fg = "#89B4FA" })
    vim.api.nvim_set_hl(0, '@variable', { fg = "#CDD6F4" })

    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "#A6E3A1" })
    vim.cmd [[highlight Whitespace guifg=#F38BA8]]

    -- Para Neotree con fondo transparente
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { fg = "#A6E3A1" })

  end,
}

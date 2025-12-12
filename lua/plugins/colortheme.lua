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

    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "#A6E3A1" })
    vim.cmd [[highlight Whitespace guifg=#F38BA8]]

    -- Para Neotree con fondo transparente
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { fg = "#A6E3A1" })

  end,
}

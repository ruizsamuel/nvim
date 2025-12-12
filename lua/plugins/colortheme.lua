return {
  'morhetz/gruvbox',
  lazy = false,
  priority = 1000,
  config = function()
    -- Configurar antes de cargar el tema
    vim.g.gruvbox_transparent_bg = 1
    vim.g.gruvbox_contrast_dark = 'hard'
    
    vim.cmd('colorscheme gruvbox')
    vim.cmd('set cursorline')
    vim.cmd('set termguicolors!')  -- Desactivar truecolor
    
    -- Usar colores del terminal (0-15)
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE', ctermbg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE', ctermbg = 'NONE' })
    vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'NONE', ctermbg = 'NONE' })
    
    vim.api.nvim_set_hl(0, 'CursorLineNr', { ctermfg = 11, bold = true })
    vim.api.nvim_set_hl(0, 'Whitespace', { ctermfg = 9 })

    -- Para Neotree con fondo transparente
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { ctermfg = 10 })

  end,
}

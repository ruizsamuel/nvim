return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('tokyonight').setup({
      style = 'night',
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { bold = true },
        functions = { bold = true },
      },
    })
    
    vim.cmd('colorscheme tokyonight')
    vim.cmd('set cursorline')
    vim.cmd('set termguicolors!')  -- Usar 16 colores
    
    -- Estilo Tokyo Night con 16 colores
    vim.api.nvim_set_hl(0, 'Normal', { ctermfg = 15, bg = 'NONE', ctermbg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE', ctermbg = 'NONE' })
    vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'NONE', ctermbg = 'NONE' })
    
    -- Keywords y control flow (púrpura)
    vim.api.nvim_set_hl(0, '@keyword', { ctermfg = 13, bold = true })
    vim.api.nvim_set_hl(0, '@keyword.function', { ctermfg = 13, bold = true })
    vim.api.nvim_set_hl(0, '@keyword.return', { ctermfg = 13, bold = true })
    vim.api.nvim_set_hl(0, '@keyword.import', { ctermfg = 5, bold = true })
    -- Respaldo para sintaxis sin Treesitter
    vim.api.nvim_set_hl(0, 'Statement', { ctermfg = 13, bold = true })
    vim.api.nvim_set_hl(0, 'Conditional', { ctermfg = 13, bold = true })
    vim.api.nvim_set_hl(0, 'Repeat', { ctermfg = 13, bold = true })
    vim.api.nvim_set_hl(0, 'Keyword', { ctermfg = 13, bold = true })
    vim.api.nvim_set_hl(0, 'Label', { ctermfg = 5, bold = true })
    
    -- Funciones / métodos (azul estilo captura)
    vim.api.nvim_set_hl(0, '@function', { ctermfg = 4, bold = true })
    vim.api.nvim_set_hl(0, '@function.call', { ctermfg = 4 })
    vim.api.nvim_set_hl(0, '@function.method', { ctermfg = 4, bold = true })
    vim.api.nvim_set_hl(0, '@method', { ctermfg = 4, bold = true })
    vim.api.nvim_set_hl(0, '@method.call', { ctermfg = 4 })
    vim.api.nvim_set_hl(0, '@constructor', { ctermfg = 4, bold = true })
    
    -- Types (cyan brillante)
    vim.api.nvim_set_hl(0, '@type', { ctermfg = 14 })
    vim.api.nvim_set_hl(0, '@type.builtin', { ctermfg = 14, bold = true })
    
    -- Strings (verde brillante)
    vim.api.nvim_set_hl(0, '@string', { ctermfg = 10 })
    
    -- Numbers y constants (amarillo/naranja)
    vim.api.nvim_set_hl(0, '@number', { ctermfg = 11 })
    vim.api.nvim_set_hl(0, '@constant', { ctermfg = 11 })
    
    -- Properties y parameters (cyan / magenta suave)
    vim.api.nvim_set_hl(0, '@property', { ctermfg = 14 })
    vim.api.nvim_set_hl(0, '@parameter', { ctermfg = 5, italic = true })
    
    -- Variables (blanco)
    vim.api.nvim_set_hl(0, '@variable', { ctermfg = 7 })
    vim.api.nvim_set_hl(0, '@variable.builtin', { ctermfg = 9 })
    
    -- Comentarios (gris)
    vim.api.nvim_set_hl(0, 'Comment', { ctermfg = 7, italic = true })
    -- Comentarios diagnosticados como innecesarios (imports sin usar)
    vim.api.nvim_set_hl(0, 'DiagnosticUnnecessary', { ctermfg = 8, underline = true })
    vim.api.nvim_set_hl(0, 'LspInlayHint', { ctermfg = 8, ctermbg = 0, italic = true })
    
    vim.api.nvim_set_hl(0, 'CursorLineNr', { ctermfg = 12, bold = true })
    vim.api.nvim_set_hl(0, 'Whitespace', { ctermfg = 8 })

    -- Selección en listas (Neo-tree, Telescope, LSP/CMP) con 16 colores
    vim.api.nvim_set_hl(0, 'CursorLine', { ctermbg = 8 })
    vim.api.nvim_set_hl(0, 'PmenuSel', { ctermbg = 8, ctermfg = 15, bold = true })
    vim.api.nvim_set_hl(0, 'Pmenu', { ctermbg = 0, ctermfg = 7 })
    vim.api.nvim_set_hl(0, 'TelescopeSelection', { ctermbg = 8, ctermfg = 15, bold = true })
    vim.api.nvim_set_hl(0, 'TelescopeSelectionCaret', { ctermfg = 13, bold = true })
    vim.api.nvim_set_hl(0, 'NeoTreeCursorLine', { ctermbg = 8 })
    vim.api.nvim_set_hl(0, 'NeoTreeIndentMarker', { ctermfg = 8 })

    -- Modo Visual (alto contraste en 16 colores)
    vim.api.nvim_set_hl(0, 'Visual', { ctermbg = 8, ctermfg = 15, bold = true })
    vim.api.nvim_set_hl(0, 'VisualNOS', { ctermbg = 8, ctermfg = 15, bold = true })

    -- Paréntesis coincidente más visible
    vim.api.nvim_set_hl(0, 'MatchParen', { ctermfg = 14, ctermbg = 0, bold = true })

    -- NeoTree git status (16-colores estilo Tokyo Night)
    vim.api.nvim_set_hl(0, "NeoTreeGitModified", { ctermfg = 11, bold = true })
    vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { ctermfg = 10 })
    vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { ctermfg = 9 })
    vim.api.nvim_set_hl(0, "NeoTreeGitRenamed", { ctermfg = 14 })
    vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { ctermfg = 14 })
    vim.api.nvim_set_hl(0, "NeoTreeGitStaged", { ctermfg = 10, bold = true })
    vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { ctermfg = 11 })
    vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { ctermfg = 9, bold = true })
    vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { ctermfg = 8 })

    -- Para Neotree con fondo transparente
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { ctermfg = 12 })

    vim.cmd([[
      let &t_8u = "\e[58;2;%lu;%lu;%lu;%lum"
    ]])

  end,
}

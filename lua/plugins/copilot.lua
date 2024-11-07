return {
  "github/copilot.vim",
  config = function()
    -- Activar Copilot al iniciar Neovim
    vim.g.copilot_no_tab_map = true  -- Desactiva el mapeo de Tab por defecto de Copilot
    vim.keymap.set('i', '<S-Tab>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false
    })
  end,
}


-- Import configuration files
require 'core.options'
require 'core.keymaps'
require 'core.indent'

-- Install `lazy.nvim` plugin manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Configure and install plugins
require('lazy').setup({
  require 'plugins.tree',
  require 'plugins.colortheme',
  require 'plugins.bufferline',
  require 'plugins.lualine',
  require 'plugins.treesitter',
  require 'plugins.telescope',
  require 'plugins.markdown-render',
  require 'plugins.markdown-preview',
  require 'plugins.lsp',
  require 'plugins.autocompletion',
  require 'plugins.indent-lines',
  require 'plugins.copilot',
  require 'plugins.copilotchat',
})

-- Hardcoded filter for angular lsp error with monorepo projects
-- Variable global para controlar el estado del filtro
_G.angular_diagnostic_filter_enabled = true

-- Guarda el handler original
local orig_handler = vim.lsp.handlers["textDocument/publishDiagnostics"]

-- Nuevo handler con filtro condicional
vim.lsp.handlers["textDocument/publishDiagnostics"] = function(err, result, ctx, config)
  if _G.angular_diagnostic_filter_enabled and result and result.diagnostics then
    result.diagnostics = vim.tbl_filter(function(diagnostic)
      local msg = diagnostic.message:lower()
      return not (
        msg:find("standalone") or
        msg:find("custom_elements_schema")
      )
    end, result.diagnostics)
  end

  -- Llama al handler original con los (posiblemente) filtrados
  orig_handler(err, result, ctx, config)
end

-- Comando para activar/desactivar el filtro
vim.api.nvim_create_user_command("ToggleAngularDiagnosticFilter", function()
  _G.angular_diagnostic_filter_enabled = not _G.angular_diagnostic_filter_enabled
  if _G.angular_diagnostic_filter_enabled then
    print("Angular diagnostic filter: ENABLED")
  else
    print("Angular diagnostic filter: DISABLED")
  end

  -- Forzar actualización de diagnósticos actuales
  vim.lsp.buf.clear_references()
  vim.lsp.codelens.refresh()
  vim.diagnostic.reset()
end, {})


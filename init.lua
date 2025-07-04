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

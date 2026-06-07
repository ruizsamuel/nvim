return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  version = false, -- Always track latest; avoids old tag without ft_to_lang
  build = function()
    pcall(vim.cmd, 'TSUpdateSync')
  end,
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
  opts = {
    ensure_installed = {
      'lua',
      'python',
      'javascript',
      'typescript',
      'vimdoc',
      'vim',
      'regex',
      'terraform',
      'sql',
      'dockerfile',
      'toml',
      'json',
      'java',
      'groovy',
      'go',
      'gitignore',
      'graphql',
      'yaml',
      'make',
      'cmake',
      'markdown',
      'markdown_inline',
      'bash',
      'tsx',
      'css',
      'html',
    },
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
      enable = true,
      -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
      --  If you are experiencing weird indenting issues, add the language to
      --  the list of additional_vim_regex_highlighting and disabled languages for indent.
      additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = { enable = true, disable = { 'ruby' } },
  },
  config = function(_, opts)
    local ok, configs = pcall(require, 'nvim-treesitter.configs')
    if not ok then
      return
    end

    configs.setup(opts)

    -- Neovim 0.12 changed match[capture_id] to return TSNode[] instead of TSNode.
    -- nvim-treesitter (archived master) never adapted to this, crashing render-markdown.nvim.
    local aliases = { ex = "elixir", pl = "perl", sh = "bash", uxn = "uxntal", ts = "typescript" }
    vim.treesitter.query.add_directive("set-lang-from-info-string!", function(match, _, bufnr, pred, metadata)
      local node = match[pred[2]]
      if not node then return end
      if type(node) == "table" then node = node[1] end
      if not node then return end
      local text = vim.treesitter.get_node_text(node, bufnr):lower()
      metadata["injection.language"] = vim.filetype.match({ filename = "a." .. text })
        or aliases[text]
        or text
    end, { force = true, all = false })
  end,
  -- There are additional nvim-treesitter modules that you can use to interact
  -- with nvim-treesitter. You should go explore a few and see what interests you:
  --
  --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
  --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
  --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
}

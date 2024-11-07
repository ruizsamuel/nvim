-- Function to check if ripgrep and fd are installed
local function check_dependencies()
  -- Helper function to check if a command exists
  local function is_installed(cmd)
    local handle = io.popen(cmd .. " --version")
    local result = handle:read("*a")
    handle:close()
    return result and result ~= ""
  end

  -- Check for ripgrep and fd
  local has_npm = is_installed("npm")
  if not has_npm then
    vim.notify(
      "Warning: npm is not installed. Some Markdown features require npm.\n" ..
      "Please install npm manually:\n" ..
      "- On Debian/Ubuntu: sudo apt install npm\n" ..
      "- On Arch Linux: sudo pacman -Sy npm\n" ..
      "- On macOS: brew install npm",
      vim.log.levels.WARN
    )
  end
end

check_dependencies()

return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && npm install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
}

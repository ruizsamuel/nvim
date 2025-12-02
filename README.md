# My Neovim Configuration

Welcome to my Neovim setup! This configuration is built to enhance my coding workflow with an assortment of useful plugins, custom keybindings, and specific settings tailored to different programming languages.

Here’s how my Neovim setup looks in action:

![Neovim Screenshot](.pics/screenshot.png)

## Requirements

- **Neovim** (0.8 or higher)
- **Node Package Manager**

## Install

```bash
$ cd ~/.config
$ git clone https://github.com/ruizsamuel/nvim
```

## Plugins

Here are the key plugins included in this setup:

- **tree-sitter**: Provides advanced syntax highlighting and code parsing.
- **bufferline**: A modern buffer line for managing open files.
- **lualine**: A sleek status line for better information display.
- **telescope**: A fuzzy finder for searching files, buffers, and more.
- **markdown-preview**: Live preview of Markdown files directly in Neovim (`:MarkdownPreview`).
- **lsp-config**: Language Server Protocol (LSP) configurations to bring IDE-like features to Neovim. This includes support for:
  - **Python** (via `pyright`)
  - **Java** (via `jdtls`)
  - **C/C++** (via `clangd`)
  - **Docker** (via `dockerls`)
  - **JavaScript/TypeScript** (via `ts_ls`)
  - **Angular** (via `angularls`)
  - **Lua** (via `lua_ls`)
  - **HTML/CSS** (via `html` and `cssls`)
  - **JSON** (via `jsonls`)
  - **YAML** (via `yamlls`)
- **autocompletion**: Auto-completion features with smart suggestions.
- **mini.indentscope**: Visual guides for indentation to improve code readability.
- **copilot**: GitHub Copilot for AI-powered code suggestions.
- **copilot-chat**: Chat interface for Copilot to interactively discuss code.
- **neotree**: A file explorer for easy navigation through your project.

---

## Key Mappings

Here's a table with my custom keybindings, grouped by category:

| **Category**           | **Key Mapping**             | **Action**                                      |
|------------------------|-----------------------------|------------------------------------------------|
| **General**            | `<C-s>` (Normal)            | Save file                                      |
| **Buffers**            | `<S-Tab>` (Normal)          | Switch to next buffer                          |
|                        | `<Tab>` (Normal)            | Switch to previous buffer                      |
|                        | `<C-q>` (Normal)            | Close buffer with confirmation                 |
| **Window Splitting**   | `<leader>ll` (Normal)       | Vertical split                                 |
|                        | `<leader>jj` (Normal)       | Horizontal split                               |
|                        | `<A-S-Up>` (Normal)           | Resize window up                               |
|                        | `<A-S-Down>` (Normal)         | Resize window down                             |
|                        | `<A-S-Right>` (Normal)        | Resize window right                            |
|                        | `<A-S-Left>` (Normal)         | Resize window left                             |
| **Window Switching**   | `<A-l>` (Normal)            | Switch to next window                          |
|                        | `<A-h>` (Normal)            | Switch to previous window                      |
| **Neotree**           | `<leader>ee` (Normal)       | Open Neotree file explorer                     |
| **Indentation**        | `<` (Visual)                      | Indent in visual mode                          |
|                        | `>` (Visual)                      | Outdent in visual mode                         |
| **Clipboard**          | `p` (Normal)                        | Paste without removing the last yank           |
| **Telescope**          | `<leader>sh` (Normal)       | Search help tags                               |
|                        | `<leader>sk` (Normal)       | Search keymaps                                 |
|                        | `<leader>sf` (Normal)       | Search files                                   |
|                        | `<leader>ss` (Normal)       | Search select Telescope                        |
|                        | `<leader>sw` (Normal)       | Search current word                            |
|                        | `<leader>sg` (Normal)       | Search by grep                                 |
|                        | `<leader>sd` (Normal)       | Search diagnostics                             |
|                        | `<leader>sr` (Normal)       | Search resume                                  |
|                        | `<leader>s.` (Normal)       | Search recent files (repeat)                   |
|                        | `<leader><leader>` (Normal) | Find existing buffers                          |
|                        | `gd` (Normal)               | Jump to definition of word under cursor        |
|                        | `gr` (Normal)               | Find references for word under cursor          |
|                        | `gI` (Normal)               | Jump to implementation of word under cursor    |
|                        | `gD` (Normal)               | Go to declaration of word under cursor         |
|                        | `<leader>ds` (Normal)       | Fuzzy find document symbols                    |
|                        | `<leader>ws` (Normal)       | Fuzzy find workspace symbols                   |
|                        | `<leader>rn` (Normal)       | Rename variable under cursor                   |
|                        | `<leader>ca` (Normal)       | Execute code action                            |
| **Autocompletion**     | `<C-n>` (Insert)           | Select next completion item                    |
|                        | `<C-p>` (Insert)           | Select previous completion item                |
|                        | `<C-b>` (Insert)           | Scroll docs backward                           |
|                        | `<C-f>` (Insert)           | Scroll docs forward                            |
|                        | `<CR>` (Insert)            | Accept completion and auto-import if supported |
|                        | `<ESC>` (Insert)           | Close completion menu                          |
|                        | `<C-Space>` (Insert)       | Manually trigger completion                    |
| **Copilot**           | `<S-Tab>` (Insert)         | Accept Copilot suggestion                      |
| **CopilotChat**       | `<leader>zc` (Normal)      | Chat with Copilot                             |
|                       | `<leader>ze` (Visual)       | Explain Code                                  |
|                       | `<leader>zr` (Visual)       | Review Code                                   |
|                       | `<leader>zf` (Visual)       | Fix Code Issues                               |
|                       | `<leader>zo` (Visual)       | Optimize Code                                 |
|                       | `<leader>zd` (Visual)       | Generate Docs                                 |
|                       | `<leader>zt` (Visual)       | Generate Tests                                |
|                       | `<leader>zm` (Normal)       | Generate Commit Message                       |
|                       | `<leader>zs` (Visual)       | Generate Commit for Selection                 |
| **Terminal**          | `<Esc>` (Terminal)            | Exit terminal mode                                |

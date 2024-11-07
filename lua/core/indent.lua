-- Configuración de indentación específica para diferentes lenguajes en Neovim

local function set_indent(filetype, shiftwidth, tabstop, expandtab)
  vim.api.nvim_create_autocmd("FileType", {
    pattern = filetype,
    callback = function()
      vim.bo.shiftwidth = shiftwidth
      vim.bo.tabstop = tabstop
      vim.bo.expandtab = expandtab
    end,
  })
end

-- Configuración de indentación para varios lenguajes

-- Lenguajes de programación comunes con 4 espacios de indentación
set_indent({ "python", "ruby", "go"}, 4, 4, true)

-- Lenguajes de programación comunes con 2 espacios de indentación
set_indent({ "javascript", "typescript", "html", "css", "scss", "json", "yaml", "toml", "lua" }, 2, 2, true)

-- Configuración específica para C, C++, y Java (tabulación de 4 espacios)
set_indent({ "c", "cpp", "java" }, 4, 4, false)

-- Markdown y texto plano con 2 espacios de indentación
set_indent({ "markdown", "text" }, 2, 2, true)

-- Makefiles requieren tabulaciones reales (1 tab = 8 espacios)
set_indent({ "make" }, 8, 8, false)

-- Configuración para lenguajes de script (bash, zsh, etc.)
set_indent({ "sh", "bash", "zsh" }, 4, 4, true)

-- Configuración para archivos de configuración (ini, conf, etc.)
set_indent({ "ini", "conf" }, 2, 2, true)

-- SQL con 4 espacios de indentación
set_indent("sql", 4, 4, true)

-- Configuración para archivos XML, Vue, y similares (2 espacios)
set_indent({ "xml", "vue" }, 2, 2, true)

-- Configuración para PHP (4 espacios)
set_indent("php", 4, 4, true)

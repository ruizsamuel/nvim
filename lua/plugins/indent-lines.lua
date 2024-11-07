return {
  "echasnovski/mini.indentscope",
  version = "*",
  opts = {
    symbol = "│",  -- Carácter para la línea de indentación
    draw = {
      animation = function() return 0 end  -- Desactiva la animación
    }
  },
  config = function(_, opts)
    require("mini.indentscope").setup(opts)
  end,
}

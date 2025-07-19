--------------------------------------------------------
-- Personaliza las notificaciones, funciona con noice --
--------------------------------------------------------

return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      background_colour = "#1e1e2e",
      timeout = 3000,
      stages = "fade_in_slide_out",
    })
    vim.notify = require("notify") -- Reemplaza la funcion por defecto de notificacion
  end,
}

----------------------------------------------------------------------
-- Personaliza el estilo de los mensajes, notificaciones, y cmdLine --
----------------------------------------------------------------------

return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- "nvim-notify", -- esto esta cargado como plugin aparte
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    -- "rcarriga/nvim-notify", -- Esto esta ya instalado como plugin aparte
    }
}

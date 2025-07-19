----------------------------------------------------
-- Una recopilacion de plugins de calidad de vida --
----------------------------------------------------

-- Configurar !!!!!!
return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      dashboard = { enabled = false}, -- Revizar
      explorer = { enabled = false}, -- Revizar, es mas bonito que el mio
      indent = { enabled = true },
      input = { enabled = false}, -- Revizar
      picker = { enabled = false}, -- Revizar
      notifier = { enabled = false}, -- Revizar
      quickfile = { enabled = false}, -- Revizar
      scope = { enabled = false}, -- Revizar
      scroll = { enabled = true },
      statuscolumn = { enabled = false}, -- Revizar
      words = { enabled = false}, -- Revizar
    },
  }
}

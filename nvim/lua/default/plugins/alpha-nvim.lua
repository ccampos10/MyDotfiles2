--------------------------------------------------------------------------
-- Este plugin agrega un dashboard como pantalla de inicio o bienvenida --
--------------------------------------------------------------------------

return {
    "goolord/alpha-nvim",
    -- dependencies = { 'echasnovski/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local theme = require("alpha.themes.dashboard") -- dashboard o theta, ambos temas son bonitos
 --      theme.section.header.val = {
	-- [[  /^--^\     /^--^\     /^--^\  ]],
	-- [[  \____/     \____/     \____/  ]],
	-- [[ /      \   /      \   /      \ ]],
	-- [[|        | |        | |        |]],
	-- [[ \__  __/   \__  __/   \__  __/ ]],
	-- [[----\ \-------/ /---------\ \---]],
 --        [[     \ \     / /           \ \  ]],
	-- [[     / /     \ \           / /  ]],
	-- [[     \/       \/           \/   ]],
 --      }
      theme.section.header.val = { -- Arte del dashboard
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⠊⠁      ]],
	[[⠀⠀⠀⠀⢀⠤⣤⣴⣿⣿⣽⣶⣶⣶⣶⣞⣛⡋ ]],
	[[⠀⠀⠀⠀⣠⣼⣻⣿⣿⣿⢿⣿⣿⣿⣿⣿⣄  ]],
	[[⠀⢠⣾⡿⠛⠻⠿⠟⠃⢃⣰⣿⣿⣿⣿⣎⠙⢧ ]],
	[[⠀⠀⠁⢀⣲⣶⣶⣶⣾⣿⣿⣿⣿⠟⢿⣿⡀  ]],
	[[⢀⣴⣾⣿⣿⣿⡿⢿⣿⣿⠿⠛⠁⠀⢸⡿   ]],
	[[⣾⣿⣿⡿⣿⠁⠀⠀⠀⠀⠈⠒⢦⣤⣈    ]],
	[[⣿⣿⣿⣿⣮⣄⡀⠀⠈⣿⣦⣿⣿⣿⣿⣿⣦⡀ ]],
	[[⠈⢸⣿⢿⣿⣿⣶⣾⣿⠿⣿⣿⣉⡀⠀⠙⢿⣿⣆]],
	[[⠀⢸⠏⠀⠈⠙⠉⠛⠿⣦⠉⠛⠓⠒⠂⠀⠈⢸⡿]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀⠀⠀⠀⠀⠘⠁]],
      }
      -- theme.config.opts.noautocmd = true -- Puede evitar interferencias con otros plugins en el aranque
      vim.cmd[[autocmd User AlphaReady echo 'ready']] -- Muestra 'ready' en la linea de comandos al iniciar
      -- More configurations
      -- :h alpha-example
      require("alpha").setup(theme.config)
    end,
  }

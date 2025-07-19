----------------------------------------
-- Plugin que pertime hacer busquedas --
----------------------------------------

-- Configurar !!!!!!
return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('telescope').setup({})
      pcall(require('telescope').load_extension, 'fzf') -- carga el plugin adicional
    end,
  },
  -- plugin adicional que optimiza los algoritmos de busqueda
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
  },
}

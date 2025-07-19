----------------------------------------------------------------------------------------
-- Se usa en muchos plugins para el resaltado de syntaxis, colores, entre otras cosas --
----------------------------------------------------------------------------------------

-- configurar todo esto
return {
  {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"}
}

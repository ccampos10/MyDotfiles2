---------------------------------------------
-- Muestra el directorio de trabajo actual --
---------------------------------------------

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      sort = {
	sorter = "case_sensitive",
      },
      view = {
	width = 30,
      },
      renderer = {
	group_empty = true,
      },
      filters = {
	dotfiles = true,
      },
      hijack_directories = { -- Disabled auto open
	-- enable = true,
	auto_open = false,
      }
    })
  end,
}

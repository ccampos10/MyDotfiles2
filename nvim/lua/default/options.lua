-------------------------------
-- Configuracion pre Plugins
-------------------------------

vim.o.number = true -- muestro los numeros de las lineas
vim.o.relativenumber = true -- muestro los numeros relativos a la linea actual
vim.o.numberwidth = 1 -- el ancho de la columna de numeros, minimo 1
vim.o.mouse = 'a' -- permito el uso del mouse en todos los modos 'all'
vim.o.termguicolors = true -- soporte de colores de 24 bits
vim.o.clipboard = 'unnamedplus' -- uso el portapapeles del sistema
vim.o.splitright = true -- las nuevas ventanas verticales se abren a la derecha, ver con el comando ":vsp"
vim.o.splitbelow = true -- las nuevas ventanas horizontales se abren a la derecha, ver con el comando ":sp"
vim.o.ignorecase = true -- las busquedas ignoran las mayusculas
vim.o.smartcase = true -- en el caso de buscar con mayusculas, se activa la busqueda mas estricta
vim.o.showcmd = true -- muestra los comandos escritos??
-- vim.o.ruler = true -- muestra la ubicacion del cursor en el status bar
vim.o.showmatch = true -- resalta los corchetes de cierre
vim.o.shiftwidth = 2 -- espacios del indentado (tab)
vim.o.laststatus = 3 -- muestra una sola status bar para todas las ventanas abiertas ("split")

vim.cmd("syntax enable") -- habilita el resaltado de sintaxis

-- Desabilitar netrw, ya que se remplaza por nvim tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-----------------------------------------------
require("config.lazy") -- cargar los plugins
-----------------------------------------------

-------------------------------
-- Configuracion post Plugins
-------------------------------

vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme oxocarbon") -- configurar el tema

-- aplicar un background transparente
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

-- Bufferline configuration
require('bufferline').setup({
  options = {
    offsets = {
      {
	filetype = "NvimTree",
	text = "Explorador de archivos",
	text_align = "center",
	separator = true, -- caracter de separacion entre el offset y la barra de archivos, true para el por def, string para uno personalizado
	-- se puede cambiar el diseno (highlight) del separador configurando offset_separator
	padding = 0, -- padding entre el offset y la barra de archivos
	-- highlight = "Directory",
      }
    }
  }
})

-- Evitar abrir nvim-tree al abrir un directorio, abrir alpha-nvim junto con nvim-tree
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local argv = vim.fn.argv()
    local is_dir = argv[1] and vim.fn.isdirectory(argv[1]) == 1

    if is_dir then
      -- Cambia al directorio
      vim.cmd('cd ' .. argv[1])

      local actBuf = vim.api.nvim_get_current_buf() -- buffer actual

      -- Inicia alpha
      local alpha_ok, alpha = pcall(require, "alpha")
      if alpha_ok then
        alpha.start(false)
      end
      vim.cmd("bd" .. actBuf) -- elimino el buffer anterior a alpha

      -- Abre Nvim Tree
      local tree_ok, tree = pcall(require, "nvim-tree.api")
      if tree_ok then
        tree.tree.open()
      end
      -- De forma automatica se abre alpha si no hay argumentos
    -- elseif #argv == 0 then
    --   -- Si no se paso ningun argumento, solo muestra alpha
    --   local alpha_ok, alpha = pcall(require, "alpha")
    --   if alpha_ok then
    --     alpha.start(false)
    --   end
    end
  end
})

-- Previene que se quede solo Nvim Tree abierto
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.bo.filetype == "NvimTree" then
      vim.cmd("quit")
    end
  end
})

-- Lualine configuration, for the status bar
require('lualine').setup {
  options = {
    theme = 'auto'
  }
}

-- Noice configuration, a notofication sistem
require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})


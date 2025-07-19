vim.g.mapleader = " " -- configurar la techa lider como espacio " "

local map = vim.api.nvim_set_keymap -- renombra la funcion vim.api.nvim_set_keymap
local function opts(desc)
  return { desc = desc, noremap = true, silent = true, nowait = true}
end
local default_opts = { noremap = true, silent = true } -- configuracion por defecto para los comandos, evita el mapeo recursivo??, y evita mostrar el comando en la linea de comandos

---------------------
-- General Configs
---------------------

-- Guardar con Ctrl + s
map('n', '<C-s>', ':w<CR>', opts('Save'))

-- Salir con Ctrl + q
map('n', '<C-q>', ':q<CR>', opts('Quit'))

-- Limpiar busqueda con <Esc>
map('n', '<Esc>', ':nohlsearch<CR>', opts('Clear search'))

-- Navegacion entre ventanas
map("n", "<C-h>", "<C-w>h", opts('Navigate between windows'))
map("n", "<C-l>", "<C-w>l", opts('Navigate between windows'))
map("n", "<C-j>", "<C-w>j", opts('Navigate between windows'))
map("n", "<C-k>", "<C-w>k", opts('Navigate between windows'))

-- Guardar y salir
map("n", "<leader>w", ":w<CR>", opts('Save'))
map("n", "<leader>q", ":q<CR>", opts('Quit'))
map("n", "<leader>e", ":wq<CR>", opts('Save and quit'))

-- Navegar entre el buffer
map("n", "<leader>h", ":bp<CR>", opts('Previous buffer'))
map("n", "<leader>l", ":bn<CR>", opts('Next buffer'))

---------------------
-- Plugins Config
---------------------

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, opts('Telescope find files'))
vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts('Telescope live grep'))
vim.keymap.set('n', '<leader>fb', builtin.buffers, opts('Telescope buffers'))
vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts('Telescope help tags'))
vim.keymap.set('n', '<leader>fk', builtin.keymaps, opts('Telescope keymap'))

-- Nvim tree
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', opts('NvimTree toggle tab'))
-- In nvim tree keymap. Read doc to know how to change it
-- a: new file or folder
-- c: copy
-- x: cut
-- p: paste
-- r: rename
-- .: run command


----------------------------------------------------------
-- Muestra el autocompletado, funciona junto con el LSP --
----------------------------------------------------------

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",       -- para autocompletado LSP
    "hrsh7th/cmp-buffer",         -- para completar texto del buffer actual
    "hrsh7th/cmp-path",           -- para completar rutas
    "L3MON4D3/LuaSnip",           -- para snippets
    "saadparwaiz1/cmp_luasnip",   -- para que cmp use LuaSnip
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
}

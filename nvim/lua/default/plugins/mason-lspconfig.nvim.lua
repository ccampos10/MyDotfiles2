--------------------------------------------------------
-- Intermediario entre el plugin de mason y lspconfig --
--------------------------------------------------------

return {
  "mason-org/mason-lspconfig.nvim",
  opts = {},
  dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason-lspconfig").setup {
      ensure_installed = {"pyright", "lua_ls", "rust_analyzer", "bashls"}, -- Instala los lsp espesificados
      automatic_enable = true,
    }
  end
}

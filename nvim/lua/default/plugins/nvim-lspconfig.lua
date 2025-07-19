---------------------------------
-- Configura e inicia los LSPs --
---------------------------------

return {
  "neovim/nvim-lspconfig",
  config = function()
    -- Aquí puedes configurar tus servidores LSP
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Ejemplo: configuración básica de Pyright (Python)
    lspconfig.pyright.setup({
      capabilities = capabilities,
      settings = {
	python = {
	  analysis = {
	    autoSearchPaths = true,
	    useLibraryCodeForTypes = true,
	    diagnosticMode = "openFilesOnly", -- o "workspace" si prefieres análisis completo
	    typeCheckingMode = "basic",       -- "off", "basic", o "strict"
	  },
	},
      },
    })

    -- LSP de lua (Generado por Chatgpt)
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
	Lua = {
	  runtime = { version = "LuaJIT" },
	  diagnostics = {
	    globals = { "vim" }, -- evita advertencias por 'vim'
	  },
	  workspace = {
	    library = vim.api.nvim_get_runtime_file("", true),
	    checkThirdParty = false,
	  },
	  telemetry = {
	    enable = false,
	  },
	},
      },
    })

    -- LSP de rust (Generado por Chatgpt)
    lspconfig.rust_analyzer.setup {
      capabilities = capabilities,
      settings = {
	["rust-analyzer"] = {
	  cargo = { allFeatures = true },
	  checkOnSave = {
	    command = "clippy"
	  },
	}
      }
    }

    -- Puedes añadir más servidores aquí
  end
}

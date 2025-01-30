return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },  -- Asegura que mason.nvim esté cargado primero
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "ts_ls" },  -- LSPs que se instalarán automáticamente
        automatic_installation = true,  -- Instalación automática de LSPs
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")

      -- Configuración específica para cada LSP
      lspconfig.lua_ls.setup({})  -- Configuración para Lua
      lspconfig.pyright.setup({})  -- Configuración para Python
      lspconfig.ts_ls.setup({})  -- Configuración para TypeScript/JavaScript

      -- Configuración global para LSP
      local capabilities = require("cmp_nvim_lsp").default_capabilities()  -- Integración con nvim-cmp
      local on_attach = function(client, bufnr)
        -- Atajos de teclado para LSP
        local opts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)  -- Ir a la definición
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)  -- Ir a la declaracion 
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)  -- Mostrar documentación
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)  -- Renombrar símbolo
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)  -- Acciones de código
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)  -- Mostrar referencias
      end

      -- Aplicar configuración global a todos los LSPs
      for _, lsp in ipairs(require("mason-lspconfig").get_installed_servers()) do
        lspconfig[lsp].setup({
          capabilities = capabilities,
          on_attach = on_attach,
        })
      end
    end,
  },
}

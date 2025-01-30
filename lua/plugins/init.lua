return {
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },  -- Treesitter
  { "nvim-lualine/lualine.nvim" },  -- Lualine
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },  -- Catppuccin
  { 'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' } }, -- Telescope
  { "nvim-tree/nvim-web-devicons" },  -- Icons
  { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x" },  -- Neo-tree
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",  -- Fuente de autocompletado para LSP
      "hrsh7th/cmp-buffer",    -- Fuente de autocompletado para el buffer
      "hrsh7th/cmp-path",      -- Fuente de autocompletado para rutas
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        },
      })
    end,
  },
  { "nvimtools/none-ls.nvim" },
}

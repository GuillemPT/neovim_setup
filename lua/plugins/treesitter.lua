return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "python", "javascript", "typescript" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true }),
    })
  end
}

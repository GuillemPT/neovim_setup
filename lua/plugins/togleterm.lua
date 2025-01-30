
return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<leader>t]], -- Abre/cierra la terminal con Ctrl + \
      direction = "float",      -- Terminal flotante
      shade_terminals = true,
    })
  end
}

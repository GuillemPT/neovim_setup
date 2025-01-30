return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",       -- Dependencia requerida
    "nvim-tree/nvim-web-devicons", -- Iconos (opcional pero recomendado)
    "MunifTanjim/nui.nvim",        -- Dependencia requerida
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,  -- Cerrar Neo-tree si es la última ventana
      enable_git_status = true,     -- Mostrar estado de Git
      enable_diagnostics = true,    -- Mostrar diagnósticos (errores, advertencias, etc.)
      default_component_configs = {
        icon = {
                folder_closed = "",     -- Icono para carpeta cerrada
                folder_open = "",       -- Icono para carpeta abierta
                folder_empty = "",      -- Icono para carpeta vacía
                },
        },
    window = {
     mappings = {
        ["<cr>"] = "open",            -- Enter para abrir archivos
        ["o"] = "open",               -- 'o' para abrir archivos
        ["<esc>"] = "revert_preview", -- Esc para salir del modo de vista previa
       },
     },
    })
  end
}

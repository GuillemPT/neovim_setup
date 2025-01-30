return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
       null_ls.builtins.formatting.stylua,  -- Formateador para Lua
       null_ls.builtins.diagnostics.erb_lint,  -- Linter ESLint
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}

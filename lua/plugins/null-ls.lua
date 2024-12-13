-- null-ls -- formatter
return {
  'jose-elias-alvarez/null-ls.nvim',
  config = function()
    local null_ls = require("null-ls")

    -- Define sources based on filetype
    local sources = {
      -- Lua formatter
      null_ls.builtins.formatting.stylua.with({
        filetypes = { "lua" }, -- Only for Lua files
      }),
      -- Python formatter
      null_ls.builtins.formatting.black.with({
        filetypes = { "python" }, -- Only for Python files
      }),
      -- Web-related formatters
      null_ls.builtins.formatting.prettier.with({
        filetypes = { "html", "css", "javascript", "json" },
      }),
      -- LaTeX formatter
      null_ls.builtins.formatting.latexindent.with({
        filetypes = { "latex" },
        extra_args = { "--max_line_length", "120" }, -- Optional: customize formatting options
      }),
    }

    -- Setup null-ls with the defined sources
    null_ls.setup({
      sources = sources,
    })

    -- Key mapping to format file and display success message
    vim.api.nvim_set_keymap(
      "n",
      "<leader>ft",
      ':lua (function() vim.lsp.buf.format({ async = true }); vim.defer_fn(function() print("File format OK") end, 1000) end)()<CR>',
      { noremap = true, silent = true }
    )
  end,
}


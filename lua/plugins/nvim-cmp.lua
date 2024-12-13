
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",      -- LSP source for nvim-cmp
    "hrsh7th/cmp-buffer",        -- Buffer source for nvim-cmp
    "hrsh7th/cmp-path",          -- Path source for nvim-cmp
    "saadparwaiz1/cmp_luasnip",  -- Luasnip source for nvim-cmp
  },
  config = function()
    local cmp = require('cmp')

    -- nvim-cmp setup
    cmp.setup({
      snippet = {
        -- Snippet expansion
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(), -- Navigate to previous item
        ['<C-n>'] = cmp.mapping.select_next_item(), -- Navigate to next item
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),    -- Scroll docs up
        ['<C-u>'] = cmp.mapping.scroll_docs(4),     -- Scroll docs down
        ['<C-Space>'] = cmp.mapping.complete(),     -- Trigger completion
        ['<C-e>'] = cmp.mapping.close(),           -- Close completion
        ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Confirm completion
      },
      sources = {
        { name = 'nvim_lsp' },  -- LSP completions
        { name = 'buffer' },     -- Buffer completions
        { name = 'path' },       -- Path completions
      },
    })
  end,
}


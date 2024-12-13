return {
  "itchyny/lightline.vim",
  config = function()
    -- Set the Lightline theme and configuration
    vim.g.lightline = {
      colorscheme = "gruvbox",  -- Lightline theme
      active = {
        left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } },
        right = { { 'lineinfo' }, { 'percent' }, { 'filetype' } },
      },
      component_function = {
        gitbranch = "fugitive#head",  -- Display the current Git branch
      },
    }
  end,
  dependencies = {
    "tpope/vim-fugitive",  -- Required for Git branch integration
  },
}


return {
  {
    "morhetz/gruvbox",
     lazy = false,  -- Load the colorscheme during startup
    priority = 1000,  -- Ensure it loads before other plugins
    config = function()
      -- Set Gruvbox as the colorscheme
      vim.cmd("colorscheme gruvbox")

      -- Optional: Customize Gruvbox settings
      vim.g.gruvbox_contrast_dark = "hard"  -- Options: 'soft', 'medium', 'hard'
      vim.g.gruvbox_invert_selection = 0
    end,
  },
}


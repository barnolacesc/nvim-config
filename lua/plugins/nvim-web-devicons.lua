
return {
  'nvim-tree/nvim-web-devicons',
  config = function()
    -- settings for nvim-web-devicons
    require'nvim-web-devicons'.setup {
      override = {
        zsh = {
          icon = "",
          color = "#428850",
          cterm_color = "65",
          name = "Zsh"
        }
      },
      -- Globally enable different highlight colors per icon (default to true)
      -- If set to false, all icons will have the default icon's color
      color_icons = true,
      
      -- Globally enable default icons (default to false)
      -- will get overridden by `get_icons` option
      default = true,

      -- Globally enable "strict" selection of icons - icon will be looked up in
      -- different tables, first by filename, and if not found by extension; 
      -- this prevents cases when a file doesn't have any extension but still gets 
      -- some icon because its name matched an extension (default to false)
      strict = true,

      -- Set the light or dark variant manually, instead of relying on `background`
      -- (default to nil)
      variant = "light",  -- or "dark"

      -- Override by filename, takes effect when `strict` is true
      override_by_filename = {
        [".gitignore"] = {
          icon = "",
          color = "#f1502f",
          name = "Gitignore"
        }
      },

      -- Override by extension, takes effect when `strict` is true
      override_by_extension = {
        ["log"] = {
          icon = "",
          color = "#81e043",
          name = "Log"
        }
      },

      -- Override by operating system, takes effect when `strict` is true
      override_by_operating_system = {
        ["apple"] = {
          icon = "",
          color = "#A2AAAD",
          cterm_color = "248",
          name = "Apple",
        },
      },
    }
  end,
}


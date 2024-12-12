# Neovim Plugins Overview

This is a collection of various plugins for Neovim to enhance functionality, including LSP support, fuzzy finding, code completion, and UI customization.

## Plugin List

### 1. **Autopairs**
Automatically closes pairs of brackets, parentheses, quotes, and other delimiters as you type, improving code writing speed and reducing errors.
- **Repository**: [https://github.com/windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
    
### 2. **vim-fugitive**
Git integration for Neovim. Fugitive allows you to execute Git commands within Neovim, making it easy to manage repositories, commits, branches, and more from within the editor.
- **Repository**: [https://github.com/tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)

### 3. **gruvbox**
A popular color scheme for Neovim. Gruvbox offers a visually appealing and comfortable theme with various contrast options to suit different user preferences.
- **Repository**: [https://github.com/morhetz/gruvbox](https://github.com/morhetz/gruvbox)

### 4. **Lemonade-luasnip**
Integrates LuaSnip with various snippets to speed up coding in Neovim. It enables customizable snippets for different programming languages and includes an intuitive UI for snippet management.
- **Repository**: [https://github.com/L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)

### 5. **lightline.lua**
A lightweight and fast statusline plugin for Neovim. Lightline provides a customizable statusline that shows useful information, such as file name, mode, and git branch, in an aesthetically pleasing way.
- **Repository**: [https://github.com/itchyny/lightline.vim](https://github.com/itchyny/lightline.vim)

### 6. **lspconfig.lua**
Sets up Language Server Protocol (LSP) support in Neovim, allowing you to integrate with language servers for features like auto-completion, diagnostics, and go-to-definition.
- **Repository**: [https://github.com/neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

### 7. **mason.lua**
A Neovim plugin for managing external tools like LSP servers, linters, and formatters. Mason helps you easily install, configure, and manage tools required for development.
- **Repository**: [https://github.com/williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)

### 8. **null-ls.lua**
Integrates external tools like linters and formatters with Neovim using the LSP interface. This allows you to run code formatters and linters seamlessly within the editor.
- **Repository**: [https://github.com/jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)

### 9. **nvim-cmp.lua**
A completion plugin for Neovim. It provides intelligent code completion and integrates with various sources, including LSP, snippets, and buffers, to offer a smooth and efficient auto-completion experience.
- **Repository**: [https://github.com/hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

### 10. **nvim-web-devicons.lua**
Adds file-type icons to Neovim, enhancing the UI with clear visual cues for different types of files (e.g., Python, Lua, Markdown, etc.), improving file navigation and identification.
- **Repository**: [https://github.com/kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)

### 11. **plenary.lua**
A collection of Lua utilities for Neovim, providing helpful functions for plugin development, testing, and other common tasks. It's a dependency for several other Neovim plugins.
- **Repository**: [https://github.com/nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)

### 12. **telescope.lua**
A powerful fuzzy finder for Neovim. Telescope allows you to search for files, buffers, LSP symbols, and more using a fuzzy search interface. It integrates with other plugins for enhanced functionality.
- **Repository**: [https://github.com/nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

### 13. **which-key.lua**
A plugin that displays a popup showing available keybindings when you press a key prefix. It helps you learn and remember key mappings for various commands, making navigation and actions in Neovim easier.
- **Repository**: [https://github.com/folke/which-key.nvim](https://github.com/folke/which-key.nvim)

---

## Installation

All plugins are installed using `lazy.nvim`, a fast and efficient plugin manager for Neovim. Make sure to install `lazy.nvim` first and then use the setup configuration provided for these plugins.

## Usage

Each plugin provides its functionality immediately after installation and configuration. You can customize the plugins further by modifying their individual configuration files in the `lua/pluginconfig` folder.

For example:
- `lspconfig.lua` sets up LSP servers.
- `nvim-cmp.lua` configures code completion sources.
- `mason.lua` installs external tools like linters and formatters.

For detailed usage instructions, refer to each plugin’s documentation.


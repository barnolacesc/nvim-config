# Neovim Plugins Overview

This is my current personal configuration for Neovim with various plugins to enhance functionality, including LSP support, fuzzy finding, code completion, and UI customization. Feel free to use it and change the settings as you like.

## Settings.lua

This file has the configuration of the nvim environment.

## Remaps.lua

Has all the remaps for nvim to work as I intended and i find more comfortable to use

## Plugin List

### 1. [Autopairs](https://github.com/windwp/nvim-autopairs)

Automatically closes pairs of brackets, parentheses, quotes, and other delimiters as you type, improving code writing speed and reducing errors. Also tabs when creating {} and pressing return, for example.

### 2. [vim-fugitive](https://github.com/tpope/vim-fugitive)

Git integration for Neovim. Fugitive allows you to execute Git commands within Neovim, making it easy to manage repositories, commits, branches, and more from within the editor.

### 3. [Gruvbox](https://github.com/morhetz/gruvbox)

A popular color scheme for Neovim. Visually appealing and comfortable theme with various contrast options. Pastel-like.

### 4. [Lemonade-luasnip](https://github.com/L3MON4D3/LuaSnip)

Integrates LuaSnip with various snippets to speed up coding in Neovim. It enables customizable snippets for different programming languages and includes an intuitive UI for snippet management.

### 5. [lightline](https://github.com/itchyny/lightline.vim)

Provides a customizable statusline that shows useful information, such as file name, mode, and git branch.

### 6. [lspconfig](https://github.com/neovim/nvim-lspconfig)

Sets up Language Server Protocol (LSP) support in Neovim, allowing you integration with language servers for features like auto-completion, diagnostics, and go-to-definition.

### 7. [Mason](https://github.com/williamboman/mason.nvim)

I mainly use it to install the LSP's linters and formatters for every language that i need to use.

### 8. [null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim)

Integrates external tools like linters and formatters with Neovim using the LSP interface. This allows you to run code formatters and linters seamlessly within the editor.

### 9. [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

A completion plugin for Neovim. It provides intelligent code completion and integrates with various sources, including LSP, snippets, and buffers, to offer a smooth and efficient auto-completion experience.

Has four other dependencies:

- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer.git)
- [cmp-path](https://github.com/hrsh7th/cmp-path.git)
- [cmp-luasnip](https://github.com/"saadparwaiz1/cmp-luasnip.git)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp.git)

### 10. [nvim-web-devicons.lua](https://github.com/kyazdani42/nvim-web-devicons)

Adds file-type icons to Neovim, enhancing the UI with clear visual cues for different types of files (e.g., Python, Lua, Markdown, etc.), improving file navigation and identification.

### 11. [Plenary](https://github.com/nvim-lua/plenary.nvim)

A collection of Lua utilities for Neovim, providing helpful functions for plugin development, testing, and other common tasks. It's a dependency for several other Neovim plugins.

### 12. [Telescope](https://github.com/nvim-telescope/telescope.nvim)

An amazing fuzzy finder for Neovim. Telescope allows you to search for files, buffers, LSP symbols, and more using a fuzzy search interface. It integrates with other plugins for enhanced functionality.

### 13. [which-key](https://github.com/folke/which-key.nvim)

A plugin that displays a popup showing available keybindings when you press a key prefix. It helps you learn and remember key mappings for various commands, making navigation and actions in Neovim easier.

---

## Installation

All plugins are installed using `lazy.nvim`, a fast and efficient plugin manager for Neovim. Make sure to install `lazy.nvim` first and then use the setup configuration provided for these plugins.

## Usage

Each plugin provides its functionality immediately after installation and configuration.

It is arranged in a way that there is the `lua/plugins` folder that holds the instalation and configuration of each plugin.
The plugins are automatically installed when the file is created properly.

For detailed usage instructions, refer to each plugin’s documentation.

This configuration can work and has been tested in both MacOs Sequoia 15.1.1 and Windows 11.

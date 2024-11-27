return
  {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate", -- Update parsers automatically
      event = { "BufReadPost", "BufNewFile" },
      config = function()
          require("nvim-treesitter.configs").setup({
              ensure_installed = { "svelte", "javascript", "typescript", "css", "html" }, -- Include Svelte
              highlight = { enable = true }, -- Enable syntax highlighting
          })
      end,
  }
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    'Mofiqul/dracula.nvim',
    'nathanaelkane/vim-indent-guides',
{
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
},
{
  'stevearc/conform.nvim',
  event = { "BufReadPost", "BufNewFile" },
 config = function()
   require('conform').setup {
	formatters_by_filetype = {
		lua = { "stylua" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		svelte = { "prettier" },
	},
	linters_by_filetype = {
		lua = { "luacheck" },
	},
	format_on_save = {
		lsp_fallback = true,
		async = false,
		timeout_ms = 500
	}
   }
 end
},
    -- ~/.config/nvim/lua/plugins/treesitter.lua
 {
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
    },
},
    'github/copilot.vim',
        {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
},
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  {
    'preservim/nerdtree',
    dependencies = {
      'ryanoasis/vim-devicons'
    },
    keys = {
      { '<F7>', ':NERDTreeToggle<CR>' },
    }
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
    event = { 'BufNewFile', 'BufRead' },
    options = { theme = 'ayu_mirage' },
    config = 'require("lualine").setup()'
  },
  {
    'machakann/vim-highlightedyank',
    config = function()
      vim.g.highlightedyank_highlight_duration = 500
    end
  },
  {
    'slim-template/vim-slim'
  },
  {
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb'
  },
    {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken",
    opts = {
    },
  },
  {
    'neoclide/coc.nvim',
    lazy = false,
    branch = "release",
    event = "InsertEnter",
    config = function()
      vim.g.coc_global_extensions = {
        "coc-json",
        "coc-tsserver",
        "coc-eslint",
        "coc-css",
        "coc-yaml",
        "coc-sh",
        "coc-prettier",
        "coc-pyright",
        "coc-html",
        "coc-solargraph",
        "@yaegassy/coc-volar"
      }
    end
  },
})

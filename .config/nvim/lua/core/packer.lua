local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath) 

local plugins = {
    'wbthomason/packer.nvim'
    'nvim-lua/plenary.nvim'
    "williamboman/mason.nvim"
    'wakatime/vim-wakatime'
    'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}
    'nvim-treesitter/playground'
    'mbbill/undotree')
    'tpope/vim-fugitive'
    'nvim-telescope/telescope.nvim', {tag = '0.1.5'}
    'fladson/vim-kitty'
    'ThePrimeagen/harpoon'
    'windwp/nvim-autopairs'
    'CRAG666/code_runner.nvim'
    'xiyaowong/transparent.nvim'
    'bluz71/vim-nightfly-colors'
    'ellisonleao/gruvbox.nvim'
    'neovim/nvim-lspconfig'
    'VonHeikemen/lsp-zero.nvim', {branch = 'v3.x'}
    'williamboman/mason-lspconfig.nvim'
    'hrsh7th/nvim-cmp' -- the completion plugin
    'hrsh7th/cmp-buffer' -- buffer completions
    'hrsh7th/cmp-path' -- path completions
    'hrsh7th/cmp-nvim-lsp'
    'saadparwaiz1/cmp_luasnip' -- snippet completions
    'hrsh7th/cmp-nvim-lua'
    'rafamadriz/friendly-snippets'
    'L3MON4D3/LuaSnip'
    'mfussenegger/nvim-lint'
    'mhartington/formatter.nvim'
}

local opts = {}

require("lazy").setup(plugins, opts)

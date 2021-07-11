local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Intellisense
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'

    -- Git
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'junegunn/gv.vim'

    -- File-tree
    use 'kyazdani42/nvim-tree.lua'

    -- Auto pairs
    use 'jiangmiao/auto-pairs'

    -- Commentary
    use 'tpope/vim-commentary'

    -- Statusline and Tabline
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    -- Working with tags
    use 'alvan/vim-closetag'
    use 'tpope/vim-surround'

    -- Telescope fuzzy finder
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'

    -- Dashboard
    use 'glepnir/dashboard-nvim'

    -- Debugging
    use 'puremourning/vimspector'
    use 'szw/vim-maximizer'

    -- Neovim TreeSitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/playground'

    -- Colorizer
    use 'norcalli/nvim-colorizer.lua'

    -- Icons
    use 'ryanoasis/vim-devicons'
    use 'kyazdani42/nvim-web-devicons'

    -- Indent guide
    use 'lukas-reineke/indent-blankline.nvim'

    -- Syntax highlight
    use 'sheerun/vim-polyglot'

    -- Find & Replace
    use 'windwp/nvim-spectre'

    -- Better navigation
    use 'justinmk/vim-sneak'
    use 'unblevable/quick-scope'
    use 'easymotion/vim-easymotion'

    -- Floating terminal
    use 'voldikss/vim-floaterm'
end)
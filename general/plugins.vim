"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-plug for Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')

" {{ Autocomplete LSP }}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" {{ Git }}
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" {{ Code Commenter }}
Plug 'tpope/vim-commentary'

" {{ Auto formatter }}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" {{ Tmux }}
Plug 'christoomey/vim-tmux-navigator'

" {{ Colorscheme }}
Plug 'tomasiser/vim-code-dark'

" {{ Vim-airline statusbar }}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" {{ Working with tags }}
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" {{ Fuzzy finder }}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" {{ Dashboard }}
Plug 'glepnir/dashboard-nvim'

" {{ Filetree }}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" {{ Debugger plugins }}
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

" {{ Neovim Tree-sitter }}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" {{ Colorizer }}
Plug 'norcalli/nvim-colorizer.lua'

" {{ Icons }}
Plug 'ryanoasis/vim-devicons'

" {{ Indent Guides }}
Plug 'lukas-reineke/indent-blankline.nvim'

" {{ Find & Replace }}
Plug 'windwp/nvim-spectre'

" {{ Better navigation }}
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'

call plug#end()

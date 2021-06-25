"  _____   _____   _____ 
" |_   _| | ___ \ /  ___|    I B Srinivas
"   | |   | |_/ / \ `--.     Github: IBS27
"   | |   | ___ \  `--. \    Twitter: @IBSrinivas
"  _| |_  | |_/ / /\__/ /
"  \___/  \____/  \____/
"        
" A customized init.vim for neovim (https://neovim.io/) 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Very Important settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
let g:mapleader=" "

" very important
filetype plugin indent on
" disable line numbers in embedded terminal
autocmd TermOpen * setlocal nonumber norelativenumber

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
autocmd FileType nerdtree setlocal nolist

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-plug for Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')

"{{ Autocomplete LSP }}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"{{ Git }}
Plug 'airblade/vim-gitgutter'

"{{ Fuzzy find }}
Plug 'ctrlpvim/ctrlp.vim'

"{{ Code Commenter }}
Plug 'scrooloose/nerdcommenter'

"{{ Auto formatter }}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

"{{ Tmux }}
Plug 'christoomey/vim-tmux-navigator'

"{{ Colorscheme }}
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'

"{{ Vim-airline statusbar }}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"{{ Syntax highlight }}
Plug 'sheerun/vim-polyglot'
Plug 'yuezk/vim-js'

"{{ HTML plugins }}
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'

"{{ Dashboard }}
Plug 'glepnir/dashboard-nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" {{ Filetree }}
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" {{ Auto pairs }}
Plug 'jiangmiao/auto-pairs'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=UTF-8
set termguicolors
set noswapfile
set mouse=a
set number relativenumber
set smarttab
set autoindent
set cindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set guifont=JetBrainsMono\ Nerd\ Font:h14
" set guifont=FuraCode\ Nerd\ Font\ Mono:h14
" set guifont=Delugia\ Nerd\ Font:h14
" set guifont=FiraCode\ Nerd\ Font\ Mono:h15
set guifont=CaskaydiaCove\ Nerd\ Font\ Mono:h14
" set gfw=JetBrainsMono\ Nerd\ Font:h14

let g:neovide_refresh_rate=120
let g:neovide_cursor_animation_length=0.08
let g:neovide_cursor_trail_length=0.4
let g:neovide_cursor_vfx_mode = "pixiedust"
let g:neovide_cursor_antialiasing=v:true
let g:neovide_cursor_vfx_particle_lifetime=1.2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colorscheme Configuration [Dracula]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
set background=dark

let $NVIM_TUI_ENABLE_TRUE_COLOR = 1

colorscheme dracula

" Setting comments to be italic
highlight Comment cterm=italic gui=italic

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Dashboard Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:dashboard_default_executive='telescope'

let g:dashboard_custom_section={
  \ 'a': {
    \ 'description': ['  Find File          '],
    \ 'command': 'Telescope find_files' },
  \ 'b': {
    \ 'description': ['  Recently Used Files'],
    \ 'command': 'Telescope oldfiles' },
  \ 'c': {
    \ 'description': ['  Load Last Session  '],
    \ 'command': 'SessionLoad' },
  \ 'd': {
    \ 'description': ['  Find Word          '],
    \ 'command': 'Telescope live_grep' },
  \ 'e': {
    \ 'description': ['  Settings           '],
    \ 'command': ':e ~/.config/nvim/init.vim' }
  \ }

let g:dashboard_custom_header =<< trim END
=================     ===============     ===============   ========  ========
\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //
||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||
|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||
||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||
|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||
||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||
|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||
||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||
||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||
||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||
||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||
||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||
||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||
||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||
||.=='    _-'                                                     `' |  /==.||
=='    _-'                        N E O V I M                         \/   `==
\   _-'                                                                `-_   /
 `''                                                                      ``'
END

let g:dashboard_custom_footer = [
  \ '   _____ ._____________  _________      .__       .__                      ',
  \ '  / ___ \|   \______   \/   _____/______|__| ____ |__|__  _______    ______',
  \ ' / / ._\ \   ||    |  _/\_____  \\_  __ \  |/    \|  \  \/ /\__  \  /  ___/',
  \ '<  \_____/   ||    |   \/        \|  | \/  |   |  \  |\   /  / __ \_\___ \ ',
  \ ' \_____\ |___||______  /_______  /|__|  |__|___|  /__| \_/  (____  /____  >',
  \ '                     \/        \/               \/               \/     \/ '
  \ ]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Keymaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" pasting using Cmd + v in neovide on mac
imap <D-v> <Esc>"+p<CR>i
nmap <D-v> "+p<CR>

" Navigating tabs
nnoremap L gt
nnoremap H gT

" Shift+enter for new line in brackets with proper indentation
imap <S-CR> <CR><Esc>O

" Code commenter
vmap <leader>/ <plug>NERDCommenterToggle
nmap <leader>/ <plug>NERDCommenterToggle
let NERDSpaceDelims=1

" Function key remaps
" terminal opener
map <F12> :let $VIM_DIR=expand('%:p:h')<CR>:belowright split term://zsh<CR>:resize 15<CR>cd $VIM_DIR<CR>

" C/C++ compiling
nmap <F8> :w <CR> :!gcc % -o %< <CR>
nmap <F7> :w <CR> :!g++ -std=c++20 % -o %< <CR>

" Python runner
nmap <F5> :CocCommand python.execInTerminal <CR><C-W><C-J> :resize 15<CR><C-W><C-K> 

" Format and save
nmap <C-s> :Format<CR> :w<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" To make <Esc> enter normal mode in neovim terminal
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <A-[> <Esc>
endif

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" keymap to remove the annoying search highlight
nmap <silent> <leader>h :noh<CR>

" keymaps for auto closing second bracket -> Temporary
" inoremap { {}<Esc>i
" inoremap ( ()<Esc>i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML Tags configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml,js'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
  \ 'typescript.tsx': 'jsxRegion,tsxRegion',
  \ 'javascript.jsx': 'jsxRegion',
  \ 'typescriptreact': 'jsxRegion,tsxRegion',
  \ 'javascriptreact': 'jsxRegion',
  \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-polyglot Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" python
let g:python_highlight_space_errors=0
let g:python_highlight_indent_errors=0
" javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-airline statusbar Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 0
let g:airline#extensions#tabline#show_buffers = 0

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
" let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#left_sep = ''

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Prettier Code Formatter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:prettier#quickfix_enabled = 1
let g:prettier#quickfix_auto_focus = 0
let g:prettier#config#single_quote = 'false'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#arrow_parens = 'avoid'

" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" run prettier on save
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html, PrettierAsync

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctrlp Fuzzy Finder
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Conqueror of Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Extensions
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json',
  \ 'coc-python',
  \ 'coc-pydocstring',
  \ 'coc-clangd',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-cssmodules',
  \ 'coc-git',
  \ 'coc-highlight',
  \ 'coc-htmldjango',
  \ 'coc-html-css-support',
  \ 'coc-jedi',
  \ 'coc-yaml',
  \ 'coc-browser'
  \ ]

set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_nfo()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType javascript,typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader>Ca  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>Ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader>Cc  :<C-u>CocList commands<cr>
" Find symbol of current dCocument
nnoremap <silent> <leader>Co  :<C-u>CocList outline<cr>
" Search workleader symbolCs
nnoremap <silent> <leader>Cs  :<C-u>CocList -I symbols<cr>
" Do default action for neCxt item.
nnoremap <silent> <leader>Cj  :<C-u>CocNext<CR>
" Do default action for prCevious item.
nnoremap <silent> <leader>Ck  :<C-u>CocPrev<CR>
" Resume latest coc listv


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Removing the vim default status bar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nvim-tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:nvim_tree_side = 'left'
let g:nvim_tree_width = 30
let g:nvim_tree_ignore = [ '.git', '.cache' ]
let g:nvim_tree_gitignore = 1 "0 by default
let g:nvim_tree_auto_open = 0 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_width_allow_resize  = 1 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_hijack_cursor = 1 "1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_update_cwd = 0 "0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }
let g:nvim_tree_special_files = [ 'README.md', 'Makefile', 'MAKEFILE' ] " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 0,
    \ }

let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "𝙭",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "→",
    \   'untracked': "*",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }

nnoremap <leader>e :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen and NvimTreeClose are also available if you need them

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

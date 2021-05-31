set encoding=UTF-8

"set guicursor=a:blinkon0-block-nCursor
set termguicolors
set nocompatible
set mouse=a
set number
set relativenumber
set smarttab
set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartcase

autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto completion
Plug 'scrooloose/nerdtree' " NerdTree
Plug 'Xuyuanp/nerdtree-git-plugin' " Git functionality in NerdTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Syntax Highlight for NerdTree
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter' " Commenting code
Plug 'prettier/vim-prettier', { 'do': 'yarn install' } " Prettier
Plug 'christoomey/vim-tmux-navigator' " Tmux
Plug 'cjrh/vim-conda' " Conda 
Plug '907th/vim-auto-save' " Autosave
Plug 'Yggdroot/indentLine', {'for': ['html', 'javascript', 'json', 'python', 'c', 'cpp']} " IndentLine
Plug 'vim-airline/vim-airline' " Airline
Plug 'vim-airline/vim-airline-themes' " Airline themes
Plug 'altercation/vim-colors-solarized' " Solarized
Plug 'dracula/vim', { 'as': 'dracula' } " Dracula
Plug 'rafi/awesome-vim-colorschemes' " Color schemes
Plug 'sheerun/vim-polyglot' " Syntax highlight
Plug 'ryanoasis/vim-devicons' " File icons in NerdTree

call plug#end()

syntax enable
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

nnoremap L gt
nnoremap H gT

imap <S-CR> <CR><Esc>O

inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-f> :NERDTreeFocus<CR>

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

map <F12> :let $VIM_DIR=expand('%:p:h')<CR>:belowright split term://zsh<CR>:resize -20<CR>cd $VIM_DIR<CR>
nmap <F8> :w <CR> :!gcc % -o %< <CR>
nmap <F7> :w <CR> :!g++ -std=c++20 % -o %< <CR>
map <F5> :CocCommand python.execInTerminal <CR> 
map <F4> :CondaChangeEnv<CR>

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <A-[> <Esc>
endif

"vim-polyglot
let g:python_highlight_all = 1
let g:python_highlight_space_errors=0
let g:python_highlight_indent_errors=0

"split naigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"indentLine
let g:indentLine_char_list = ['┊']

" vim auto save
"let g:auto_save = 1  " enable AutoSave on Vim startup
"let g:auto_save_silent = 1  " do not display the auto-save notification
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" NERDTREE
" open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror

let g:webdevicons_enable_nerdtree = 1
let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
    \ "Staged"    : "#0ee375",  
    \ "Modified"  : "#d9bf91",  
    \ "Renamed"   : "#51C9FC",  
    \ "Untracked" : "#FCE77C",  
    \ "Unmerged"  : "#FC51E6",  
    \ "Dirty"     : "#FFBD61",  
    \ "Clean"     : "#87939A",   
    \ "Ignored"   : "#808080"   
    \ } 

" sync open file with NERDTree
" Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

"vim-airline
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

"vim-prettier
"let g:prettier#exec_cmd_path = "Users/IBSRINIVAS/node_modules/.bin/prettier"
"let g:prettier#quickfix_enabled = 1
"let g:prettier#quickfix_auto_focus = 0
"let g:prettier#config#single_quote = 'true'
"let g:prettier#config#trailing_comma = 'all'
"prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
"run prettier on save
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.c,*.cpp PrettierAsync

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

 "coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json',
  \ 'coc-python',
  \ 'coc-clangd',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-cssmodules',
  \ 'coc-rome'
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
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
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
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc listv

" Removing the vim default status bar
set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar

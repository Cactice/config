"I grant this vimrc my love
"--my own code
let mapleader = "\<Space>"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>es :execute ":vsplit ~/.vim/bundle/vim-snippets/snippets/". &syntax . ".snippets"<cr>
nnoremap <leader>w :let offset=winline()\|wincmd w\|exe 'normal ' . offset . 'H'<cr>
nnoremap <leader>v :Vex<cr>
nnoremap <leader>e :Ex<cr>
set binary noeol
set clipboard=unnamed
set t_Co=256
set autoindent
set tabstop=2
set softtabstop=2
set expandtab 
set shiftwidth=2
set foldmethod=indent 
set ic
"inoremap <NL> <esc>:call AutoindentEnter()<CR>
nnoremap <CR> za
nnoremap <F5> :silent make!\|redraw!\|clist<CR>
nnoremap ; :
nnoremap :make :wn
vnoremap <CR> <esc>l
nnoremap R :%s/<c-r><c-w>//gc<Left><Left><Left>
inoremap <c-b> <esc>Bi
inoremap <CR> <C-c>l
nnoremap <S-Left>  <C-w><
nnoremap <S-Right> <C-w>>
nnoremap <S-Up>    <C-w>-
nnoremap <S-Down>  <C-w>+
set belloff+=ctrlg 

set numberwidth=4
set number
set rnu
set showmode shortmess-=c
set completeopt+=menuone,noinsert,noselect
filetype plugin on
"--AutoCmd
"autocmd InsertCharPre * ShowSuggestion()
autocmd BufNewFile,BufRead *.pde set filetype=processing
autocmd FileType processing call MakeProcessing()
autocmd QuickFixCmdPre make 
\a execute '!xcopy ' . expand("%:p:h") . ' ' . $TMP . '\Programming\' . expand("%:p:h:t") . ' /D /E /Y'|
"\ execute 'w! ' . $TMP . '\Programming\' . expand("%:p:h:t") . '\' . expand("%:p:t")
"--Processing
function! MakeProcessing()
    if !isdirectory('%TEMP%' . '\Programming\' . expand("%:p:h:t"))
        call mkdir('%TEMP%' . '\Programming\' . expand("%:p:h:t"), "p")
    endif
    setl makeprg=processing-java\ --sketch=%TMP%\Programming\%:p:h:t\ --run
endfunction

""---vundle
"
"
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'


"---vim-table-mode
"Plugin 'dhruvasagar/vim-table-mode'

"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"---Processing for vim
"Plugin 'sophacles/vim-processing'

"---ctrlp
Plugin 'kien/ctrlp.vim'

"---vim-commentary
Plugin 'tpope/vim-commentary'

"---quickrun
"Plugin 'thinca/vim-quickrun'

Plugin 'lifepillar/vim-mucomplete'

Plugin 'w0rp/ale'

"---solarized
Plugin 'altercation/vim-colors-solarized'

"Plugin 'justmao945/vim-clang'

"---jsbeautify
Plugin 'maksimr/vim-jsbeautify'

"---Snipmate
 Plugin 'MarcWeber/vim-addon-mw-utils'
 Plugin 'tomtom/tlib_vim'
 Plugin 'garbas/vim-snipmate'
 Plugin 'honza/vim-snippets'

"---Nerdtrees
Plugin 'scrooloose/nerdtree'

"---surround
"Plugin 'tpope/vim-surround'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Put your non-Plugin stuff after this line
"
let g:ale_sign_column_always = 1
let g:ale_lint_on_enter = 0
let g:ale_sign_error = '!!'


colorscheme solarized
syntax enable
set background=light
let g:snipMate = {}
let g:snipMate.snippet_version = 1
"imap <expr> <tab> (pumvisible()?"\<plug>(MUcompleteFwd)":"\<plug>snipMateNextOrTrigger")
"imap <expr> <cr> (pumvisible()?"<plug>(MUcompletePopupAccept)"."\<plug>snipMateNextOrTrigger":"\<esc>l")
"imap <expr> <BS> (pumvisible()?"<plug>(MUcompletePopupCancel)":"\<BS>")

let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#user_mappings = { 'snip' : "\<plug>snipMateShow"}
let g:mucomplete#chains = { 'default': ['snip', 'keyp', 'keyn', 'omni', 'file', 'spel'] }
let g:snipMate['no_match_completion_feedkeys_chars'] = ''
let g:mucomplete#no_popup_mappings = 0
"---initial vimrc
"
set langmenu=en_US.UTF-8
let $LANG = 'en'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

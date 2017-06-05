set nocompatible

filetype off

" Crontab speicifc settings
autocmd FileType crontab setlocal nowritebackup

" Python specific settings
autocmd FileType python set colorcolumn=80

" Vimwiki specific settings
autocmd FileType vimwiki set tabstop=4

autocmd FileType ruby set tabstop=4

" Trying to set color column for python
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" --- Making vim look GOOD OH YEAH -----
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" --- We programmers now ---
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ---- lol what's text ---
Plugin 'Raimondi/delimitMate'

" --- Man pages, tmux ---
Plugin 'jez/vim-superman'
Plugin 'christoomey/vim-tmux-navigator'

" --- syntax plugins ---
Plugin 'jez/vim-c0'
Plugin 'jez/vim-ispc'
Plugin 'kchmck/vim-coffee-script'
Plugin 'fatih/vim-go'


" --- Extras ---
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'HTML-AutoCloseTag'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'tpope/vim-liquid'
Plugin 'cakebaker/scss-syntax.vim'


" --- Personal Plugs ---
Plugin 'vimwiki/vimwiki'
Plugin 'itchyny/calendar.vim'

call vundle#end()

" --- Plugin Settings ---
set background=light

" Syntastic related
hi clear SignColumn

colorscheme solarized

" EL STATUSBAR
set laststatus=2

" Requires powerline
let g:airline_powerline_fots = 1

" Paste in paste mode
let g:airline_detect_paste=1

let g:airline#extensions#tabline#enabled = 1

let g:airline_theme='solarized'

filetype plugin indent on

" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

syntax on
inoremap jk <esc>

" Hey look, it understands mice now
set mouse=a


" ---- Nerd truee ---
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1

" --- syntastic settings ---
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
	au!
	au FileType tex let b:syntastic_mode = "passive"
augroup END

" --- vim-easytags settings
set tags=./tags;,~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" --- majutsushi/tagbar settings ---
nmap <silet> <leader>b :TagbarToggle<CR>

" --airblade/vim-githutter settings ---
let g:airline#extensions#hunks#non_zero_only = 1

let delimitMate_expand_cr = 1
augroup mydelimitMate
	au!
	au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
	au FileType tex let b:delimitMate_quotes = ""
	au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
	au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" --- vim-superman settings ---
noremap K :SuperMan <cword><CR>

" --- vim wiki settings ---
let g:vimwiki_list = [{'path':'$HOME/Nextcloud/vimwiki', 'path_html':'$HOME/Nextcloud/vimwiki_html'}]

let g:calendar_cache_directory = expand('~/Nextcloud/vimwiki/calendar.vim/')

" --- Specific golangs stuff
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

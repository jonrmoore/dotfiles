" Basics:
    set nocompatible
    colo murphy
    syntax on
    set number relativenumber
    set autoindent
    set indentexpr=off
    set expandtab

    set shiftwidth=4
    set tabstop=4
    set expandtab
    set softtabstop=4


" Leader:
    let mapleader = ","

"Python:
    let g:python3_host_prog = '/usr/bin/python3'

" Word Processor Mode:
    func! WordProcessorMode()
        colo peachpuff
        setlocal formatoptions=1
        setlocal noexpandtab
        " map j gj
        " map k gk
        setlocal spell spelllang=en_us
        " Import thesaurus here
        set complete+=s
        set formatprg=par
        setlocal wrap
        setlocal linebreak
    endfu
    com! WP call WordProcessorMode()

" Download vim-plug if not already present:
    if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
        echo "Downloading junngunn/vim-plug to manage plugins..."
        silent !mkdir -p ~/.config/nvim/autoload/
        silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
    endif

" Plugins:
    call plug#begin('~/.vim/plugged')
        " Shade of Purple
        Plug 'Rigellute/shades-of-purple.vim'
        " Iceberg
        Plug 'cocopon/iceberg.vim'
        " CSS Colors
        Plug 'ap/vim-css-color'
        " Sass Colors
        Plug 'shmargum/vim-sass-colors'
        " Surround
        Plug 'tpope/vim-surround'
        " Fugitive
        Plug 'tpope/vim-fugitive'
        " Commentary
        Plug 'tpope/vim-commentary'
        " Code completion
        Plug 'valloric/youcompleteme'
        " Easy Motion
        Plug 'easymotion/vim-easymotion'
        " Emmet
        Plug 'mattn/emmet-vim'
        " Snippets
        Plug 'honza/vim-snippets'
        " Goyo for writing
        Plug 'junegunn/goyo.vim'
        " Nerdtree
        Plug 'scrooloose/nerdtree'
        " Syntastic
        Plug 'vim-syntastic/syntastic'	
        " Outliner
        Plug 'vimoutliner/vimoutliner'
        
    call plug#end()

" Toggle Nerdtree
    map <C-n> :NERDTreeToggle<CR>

" Color scheme setup:
    set termguicolors
    syntax enable
    set t_Co=256
    set background=dark
    colorscheme iceberg
    highlight Normal ctermbg=NONE
    highlight nonText ctermbg=NONE

" No more double-spacing after period
    set nojoinspaces
    set nowritebackup
    set noswapfile
    set nobackup

" Settings for syntastic
" Syntastic statusline
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

" Fugitive statusline
    " set statusline+=%{FugitiveStatusline()}
    set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P

" Sytnastic settings
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_loc_list_height=5
    let g:syntastic_check_on_wq = 0

" Better symbols
    let g:syntastic_error_symbol = 'XX'
    let g:syntastic_warning_symbol = '!!'

    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" fuck everything about the 'Press ENTER' message:
    set showcmd
    set shortmess=at

" 2-space indent for html and json files
    autocmd BufRead,BufNewFile *.js,*.json,*.html,*.css,*.svg set sw=2 tabstop=2
    autocmd BufRead,BufNewFile Makefile,makefile,*Makefile,*makefile set noexpandtab

" Navigating with guides
    inoremap <Leader><Leader> <Esc>/<++><Enter>"_c4l
    vnoremap <Leader><Leader> <Esc>/<++><Enter>"_c4l
    map <Leader><Leader> <Esc>/<++><Enter>"_c4l

" ----
    inoremap {<CR> {<CR>}<ESC>O
    inoremap {;<CR> {<CR>};<ESC>O
    inoremap {<Leader> {}<left>
    inoremap [<Leader> []<left>
    inoremap (<Leader> ()<left>
    inoremap "<Leader> ""<left>
    inoremap '<Leader> ''<left>
    inoremap `<Leader> ``<left>
    
" HTML Snippets
    autocmd FileType html inoremap ,h1 <h1></h1><Esc>cit

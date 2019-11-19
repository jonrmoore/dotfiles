" Color and Style Configuration
set termguicolors
syntax enable
set background=dark
colorscheme wombat
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
let g:rainbow_active=1 " for rainbow brackets

" Unobstrusive line numbers
hi CursorLine       guibg=#333333
hi LineNr           guifg=#555555

" Toggle Menu, Toolbar and Scollbar
set guioptions-=m
set guioptions-=T
set guioptions-=r
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
    \set guioptions-=T <Bar>
    \set guioptions-=m <bar>
    \set guioptions-=r <bar>
  \else <Bar>
    \set guioptions+=T <Bar>
    \set guioptions+=n <Bar>
    \set guioptions+=r <Bar>
  \endif<CR>

" Plugins
call plug#begin('~/.vim/plugged')
    " Wombat color scheme
    Plug 'vim-scripts/Wombat'
    " youcompleteme
    Plug 'ycm-core/YouCompleteMe'
    " Rainbow Brackets
    Plug 'luochen1990/rainbow'
    " CSS Colors
    Plug 'ap/vim-css-color'
    " Sass Colors
    Plug 'shmargum/vim-sass-colors'
    " Auto Pairs
    Plug 'jiangmiao/auto-pairs'
    " Surround
    Plug 'tpope/vim-surround'
    " Fugitive
    Plug 'tpope/vim-fugitive'
    " Sleuth
    Plug 'tpope/vim-sleuth'
    " Sensible
    Plug 'tpope/vim-sensible'
    " Commentary
    Plug 'tpope/vim-commentary'
    " Vim Ruby
    Plug 'vim-ruby/vim-ruby'
    " Easy Motion
    Plug 'easymotion/vim-easymotion'
    " Emmet
    Plug 'mattn/emmet-vim'
    " Snippets
    Plug 'honza/vim-snippets'
    " Goyo for writing
    Plug 'junegunn/goyo.vim'
    " Vinegar
    Plug 'tpope/vim-vinegar'
    " Syntastic
    Plug 'vim-syntastic/syntastic'	
    " Outliner
    Plug 'vimoutliner/vimoutliner'
    " Typescript
    Plug 'leafgarland/typescript-vim'
    " .tsx extension support
    Plug 'ianks/vim-tsx'
    " For Denite features
    Plug 'Shougo/denite.nvim'
    " Asych linting
    Plug 'dense-analysis/ale'
call plug#end()

" Enable Sass syntax highlighting
autocmd FileType css,sass,scss setlocal omnifunc=csscomplete#CompleteCSS
let g:deoplete#enable_at_startup = 1

" File compatabiliy and configuration
set nobackup
set nowritebackup
set noswapfile
set nocompatible
set ts=4
set shiftwidth=4
set expandtab
set wrap
set indentexpr=off
set nohlsearch
set number 
set relativenumber
nnoremap k gk
nnoremap j gj
" Leader
let mapleader=","

highlight Cursor guifg=black guibg=yellow
highlight iCursor guifg=black guibg=yellow
set guicursor=n-v-c:block-Cursor
set guicursor=i:ver25-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" Font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" Customize Status line color of current window & non-current windows
highlight StatusLineNC guifg=SlateBlue guibg=Yellow
highlight StatusLine guifg=Gray guibg=White

set vb t_vb= " stop beeping or flashing the screen

nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==
inoremap <A-k> <Esc>:m .-2<CR>gi
inoremap <A-j> <Esc>:m .+1<CR>gi
vnoremap <A-k> :m >.-2<CR>==

" Mappings for moving lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>== 
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Easier split resizing
nnoremap <C-Up> <C-w>3- 
nnoremap <C-Down> <C-w>3+
nnoremap <C-Left> <C-w>5<
nnoremap <C-Right> <C-w>5>

" More split stuff: swap and quit inactive
nnoremap <A-r> <C-w>R
nnoremap <A-q> <C-w>o


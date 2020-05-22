" ---------------------------------------- Plugins
" {{{
call plug#begin()

   " Code completion
   Plug 'ycm-core/YouCompleteMe'

   " Syntastic
   Plug 'vim-syntastic/syntastic'

   " NERDTree for file navigation
   Plug 'preservim/nerdtree'

   Plug 'cocopon/iceberg.vim'
   Plug 'lifepillar/vim-solarized8'
   Plug 'flazz/vim-colorschemes'
   Plug 'morhetz/gruvbox'
   Plug 'tomasr/molokai'
   Plug 'ajh17/spacegray.vim'

 " Rainbow Brackets
   Plug 'luochen1990/rainbow'

   " Sass Colors
   Plug 'shmargum/vim-sass-colors'

 " Auto Pairs
   Plug 'jiangmiao/auto-pairs'

 " Language Support
   Plug 'fatih/vim-go' " Go
   Plug 'ap/vim-css-color' " CSS
   Plug 'vim-ruby/vim-ruby' " Ruby
   Plug 'leafgarland/typescript-vim' " Typescript
   Plug 'ianks/vim-tsx' " TSX
   Plug 'HerringtonDarkholme/yats.vim'
   Plug 'OmniSharp/Omnisharp-vim' " C#/Dotnet
  
   " Ctrl-P
   Plug 'ctrlpvim/ctrlp.vim'

   " Async build and test dispatcher
   Plug 'tpope/vim-dispatch'

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

 " Vinegar
   Plug 'tpope/vim-vinegar'

 " Easy Motion
   Plug 'easymotion/vim-easymotion'

 " Emmet
   Plug 'mattn/emmet-vim'

 " Snippets
   Plug 'honza/vim-snippets'

 " Goyo for writing
   Plug 'junegunn/goyo.vim'

 " Goyo for writing
   Plug 'junegunn/limelight.vim'

 " 	Outliner
   Plug 'vimoutliner/vimoutliner'

 " For Denite features
   Plug 'Shougo/denite.nvim'

 " Prettier
   Plug 'prettier/vim-prettier'

 " Submode
   Plug 'kana/vim-submode'

   if has('nvim')
     Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
   else
     Plug 'Shougo/deoplete.nvim'
     Plug 'roxma/nvim-yarp'
     Plug 'roxma/vim-hug-neovim-rpc'
   endif

   Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

call plug#end()
" }}}

" ---------------------------------------- Base settings
" {{{
"

" Leaders
let mapleader=","
let maplocalleader="\\"

" Ensure inoperability with old VI commands
set nocompatible

" No swap files
set noswapfile

" Don't highlight search results by default
set nohlsearch

" Better display for messages
set cmdheight=2

" Width for column with line numbers
set numberwidth=3

" Shorten update time from default 4000 to 300
set updatetime=300

" Set filetype and syntax on for syntax highlighting to work
filetype plugin on
syntax on

" Enable syntax highlighting
syntax on

" All folds hidden by default in new buffer
set foldlevelstart=0

" No more 'Hit Enter' messages
set shortmess=at

" Tab through file options
set wildmode=list:full

" Open new splits to the right and bottom
set splitbelow splitright

" For my benefit and the annoyance of everyone else
set number relativenumber

" Tab stuff
set ts=2
set shiftwidth=2
set expandtab
set wrap
set indentexpr=off

" Scroll over wrapped lines as though they were normal
nnoremap k gk
nnoremap j gj

" Font
set guifont=Fira\ Code\ 10

" Color Scheme
" colorscheme iceberg
" colorscheme molokai
colorscheme gruvbox
set background=dark

" Toggle Menu, Toolbar and Scollbar (if applicable)
" set guioptions-=m
" set guioptions-=T
" set guioptions-=r
" map <silent> <F2> :if &guioptions =~# 'T' <Bar>
"     \set guioptions-=T <Bar>
"     \set guioptions-=m <bar>
"     \set guioptions-=r <bar>
"   \else <Bar>
"     \set guioptions+=T <Bar>
"     \set guioptions+=n <Bar>
"     \set guioptions+=r <Bar>
"   \endif<CR>


" }}}

" ---------------------------------------- Statusline
" {{{
set statusline=%.50F\ %{strftime('%c')}
set statusline+=%=
set statusline+=\ line\ >>%4l/%2L\ ::\ column\ >>%4c\ 
" }}}

" ---------------------------------------- Navigation
" {{{

" Mappings -or moving lines up and down
nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>== 
inoremap <c-j> <Esc>:m .+1<CR>==gi
inoremap <c-k> <Esc>:m .-2<CR>==gi
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv

" Easier split navigation
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
nnoremap <leader>s :split<Enter>
nnoremap <leader>v :vs<Enter>

nnoremap <leader>jd :YcmCompleter GoTo<cr>
nnoremap <leader>b :buffers<cr>
nnoremap <leader>bj :bprevious<cr>
nnoremap <leader>bk :bNext<cr>

" Easier split resizing
call submode#enter_with('grow/shrink', 'n', '', '<leader><up>', '<C-w>3+')
call submode#enter_with('grow/shrink', 'n', '', '<leader><down>', '<C-w>3-')
call submode#map('grow/shrink', 'n', '', '<down>', '<C-w>3-')
call submode#map('grow/shrink', 'n', '', '<up>', '<C-w>3+')
call submode#enter_with('grow/shrink', 'n', '', '<leader><left>', '<C-w>5>')
call submode#enter_with('grow/shrink', 'n', '', '<leader><right>', '<C-w>5<')
call submode#map('grow/shrink', 'n', '', '<right>', '<C-w>5<')
call submode#map('grow/shrink', 'n', '', '<left>', '<C-w>5>')

" }}}

" ---------------------------------------- Keybindings
" {{{
" Leader w/q to write/quit buffer
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :q!<cr>

" Leader rn to toggle relative number
nnoremap <leader>rn :set relativenumber!<cr>

" Leader U/u to capitalize/lowercase word
inoremap <leader>u <esc>guiwea
nnoremap <leader>u guiwE
inoremap <leader>U <esc>gUiwea
nnoremap <leader>U gUiwE

" Open .vimrc in side buffer
nnoremap <leader>ev :vsplit $HOME/.vimrc<cr>
" Source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Nicer mapping
nnoremap H ^
nnoremap L $

" Wrap current word in quotation marks
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
" }}}

" ---------------------------------------- Abbreviations
" {{{
iabbrev @@ jonmoore510@gmail.com
iabbrev ccopy Copyright 2020 Jon Moore, all rights reserved.

iabbrev shoudl should
iabbrev coudl could
iabbrev woudl would
" }}}

" ---------------------------------------- FileType Settings
" {{{
autocmd FileType javascript,typescript,c,cpp,python :iabbrev ret return;<left>
autocmd BufNewFile,BufRead *.cshtml set syntax=html

augroup filetype_html
	autocmd!
	autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
	autocmd FileType html nnoremap <buffer> <leader>html5 i<!DOCTYPE<space>html><cr><html<space>lang="en"><cr><tab><head><cr><tab><meta<space>charset="UTF-8"><cr><meta<space>name="viewport"<space>content="width=device-width,<space>initial-scale=1.0"><cr><title>Document</title><cr></head><cr><body><cr></body><cr></html><esc>:Prettier<cr>kcit<cr><esc>O
augroup END

augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker nowrap
augroup END
" }}}

" ---------------------------------------- Plugin settings
" {{{
filetype plugin indent on
syntax on

" Vinegar
        let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
        set modifiable
" Prettier
        " Enable Prettier autoformatter
        let g:prettier#autoformat=1
        " Don't require files to be marked with @prettier/@format decorators
        let g:prettier#autoformat_require_pragma=0
" CSS, SCSS, SASS, LESS
        autocmd FileType css,sass,scss,less setlocal omnifunc=csscomplete#CompleteCSS
        let g:deoplete#enable_at_startup = 1
" NERDTree
        " Leader n to toggle nerdtree
        map <leader>n :silent :NERDTreeToggle<CR>
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
        " Show hidden files in NERDTree
        let g:NERDTreeShowHidden=1

" Limelight
        " Compatibility with One Dark colorscheme
        let g:limelight_conceal_ctermfg = 'gray'
        let g:limelight_conceal_ctermfg = 240

        " Toggle Limelight
        nnoremap <leader>L :Limelight!!<cr>
" Deoplete
         let g:deoplete#enable_at_startup = 1
" }}}

" for file in split(globpath("~/.vim/rc", "*.vim"), '\n')
"   execute 'source' fnameescape(file)
" endfor

" Base settings
" ====================================
set nocompatible
filetype off
syntax enable
colorscheme onedark
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

" Open new splits to the right and bottom
set splitbelow
set splitright

" File compatabiliy and configuration

" if hidden is not set, textedit might fail
set hidden

" no backup files
set nobackup
set nowritebackup

" keep backupcopy for webpack
set backupcopy

" no swap files
set noswapfile
set nocompatible

" Better display for messages
set cmdheight=2

" Shorten update time from default 4000 to 300
set updatetime=300

" No |inc-completion-menu| messages
set shortmess+=c

" Always show sign columns
set signcolumn=yes
" set tab to 4
set ts=2
set shiftwidth=2
set expandtab
set wrap
set indentexpr=off
set nohlsearch

" relative numbers
set number 
set relativenumber

" Scroll over wrapped lines as though they were normal
nnoremap k gk
nnoremap j gj

" Leader
let mapleader=","
" highlight Cursor guifg=black guibg=yellow
" highlight iCursor guifg=black guibg=yellow
" set guicursor=n-v-c:block-Cursor
" set guicursor=i:ver25-iCursor
" set guicursor+=n-v-c:blinkon0
" set guicursor+=i:blinkwait10

" Font
" if has("gui_running")
"   if has("gui_gtk2")
"     set guifont=Inconsolata\ 12
"   elseif has("gui_macvim")
"     set guifont=Menlo\ Regular:h14
"   elseif has("gui_win32")
"     set guifont=Consolas:h11:cANSI
"   endif
" endif

set guifont=Fira\ Code\ 10

" Customize Status line color of current window & non-current windows
highlight StatusLineNC guifg=SlateBlue guibg=Yellow
highlight StatusLine guifg=Gray guibg=White

set vb t_vb= " stop beeping or flashing the screen








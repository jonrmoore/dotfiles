" Plug-ins

call plug#begin('~/.vim/plugged')

	" Goyo for writing
	Plug 'junegunn/goyo.vim'
	" Nerdtree
	Plug 'scrooloose/nerdtree'
	" Syntastic
	Plug 'vim-syntastic/syntastic'	
	
call plug#end()

" Relative numbers
set number relativenumber

" Auto-indent
set autoindent
set indentexpr=off
set expandtab

" Set tab = 2
set tabstop=2

" No more double-spacing after period
set nojoinspaces

set nowritebackup
set noswapfile
set nobackup

" settings for syntastic
" Syntastic statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
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
    " Toggle Nerdtree
map <C-n> :NERDTreeToggle<CR>

" fuck everything about the 'Press ENTER' message:
set showcmd
set shortmess=at

" 2-space indent for html and json files
autocmd BufRead,BufNewFile *.json,*.html,*.css,*.svg set sw=2 tabstop=2
autocmd BufRead,BufNewFile Makefile,makefile,*Makefile,*makefile set noexpandtab

" Navigating with guides
inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
map <Space><Tab> <Esc>/<++><Enter>"_c4l


" BINDINGS
"
" HTML
autocmd FileType html set tabstop=8

autocmd FileType html inoremap ,html <!DOCTYPE html><Enter><html lang="en-us"><Enter><Tab><head><Enter><Tab><title><++></title><Enter><meta charset="UTF-8"><Enter><Backspace><Backspace><Backspace><<Backspace><Backspace></head><Enter><body><Enter><Enter><++><Enter><Enter></body><Enter></html><Esc>gg

autocmd FileType html inoremap ,p  <p></p><Enter><++><Esc>0k2f<i
autocmd FileType html inoremap ,h1 <h1></h1><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,h2 <h2></h2><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,h3 <h3></h3><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,h4 <h4></h4><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,img <img src=""><Enter><++><Esc>k0/"<Enter>li
autocmd FileType html inoremap
autocmd FileType html inoremap


" Python bindings
autocmd FileType .py set expandtab
autocmd FileType .py set tabstop=4
autocmd FileType .py set softtabstop=4
autocmd FileType .py set shiftwidth=4

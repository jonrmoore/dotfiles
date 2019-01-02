"------------------------------------
" ___  _             ___     _
"|   \| |           |   |  O  \
"|  O | |__ _  __-- |   |  _| _} ___
"|  __| |  | |/ _ | |   |_| | | / $ \
"|  | | |  | | |_ | |     \ |  } ___/
"|__| |__\___|\__ | |_____/_|_| \___/
"              _| |
"             \___/   
"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
"------------------------------------
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

set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4

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
autocmd BufRead,BufNewFile *.js,*.json,*.html,*.css,*.svg set sw=2 tabstop=2
autocmd BufRead,BufNewFile Makefile,makefile,*Makefile,*makefile set noexpandtab

" Navigating with guides
inoremap <Shift><Tab> <Esc>/<++><Enter>"_c4l
vnoremap <Shift><Tab> <Esc>/<++><Enter>"_c4l
map <Shift><Tab> <Esc>/<++><Enter>"_c4l

"                         __
"  ___  _    _       ____| _|  _            /|\
"/  __||  \ | | 0 __|    \|_ _| |_  __   /|\/|\
"| |__ |   \| |__|  \ [} | _|_   _|/ _\  /|\/|\
"\___ |  |\   |  | * \  _||_  | |_ |_ |  /|\ |
"|___ /|_| \__|__|  _/_| |__| \__/ \__/   |    
"                |_|
"                
"************************************************

" HTML

autocmd FileType html inoremap ,html <!DOCTYPE html><Enter><html lang="en-us"><Enter><Tab><head><Enter><Tab><title><++></title><Enter><meta charset="UTF-8"><Enter><Backspace><Backspace><Backspace><<Backspace><Backspace></head><Enter><body><Enter><Enter><++><Enter><Enter></body><Enter></html><Esc>gg

autocmd FileType html inoremap ,dc <div class=""><++></div><Enter><++><Esc>k2f"i
autocmd FileType html inoremap ,d <div></div><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,p  <p></p><Enter><++><Esc>0k2f<i
autocmd FileType html inoremap ,h1 <h1></h1><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,h2 <h2></h2><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,h3 <h3></h3><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,h4 <h4></h4><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,img <img src=""><Enter><++><Esc>k0/"<Enter>li
autocmd FileType html inoremap ,cl <Space>class=""<Esc>i
autocmd FileType html inoremap ,id <Space>id=""<Esc>i
autocmd FileType html inoremap ,src <Space>src=""<Esc>i
autocmd FileType html inoremap ,hd <header class=""><Enter><Enter><++><Enter><Enter></header><Esc>2k02f"i
autocmd FileType html inoremap ,sb <sidebar class=""><Enter><Enter><++><Enter><Enter></sidebar><Esc>2k02f"i
autocmd FileType html inoremap ,mn <main><Enter><Enter><Enter><Enter></main><Esc>2kA<Tab> 
autocmd FileType html inoremap ,ft <footer><Enter><Enter><Enter><Enter></footer><Esc>2kA<Tab>
autocmd FileType html inoremap ,l <Esc>F>i


" Javascript
autocmd Bufread,BufNewFile *.js,*.py,*.c,*.h,*.java,*.scala inoremap ( ()<Esc>i
autocmd Bufread,BufNewFile *.js,*.py,*.c,*.h,*.java,*.scala inoremap { {}<Esc>i

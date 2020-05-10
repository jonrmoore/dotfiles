let mapleader=","
let maplocalleader="\\"
inoremap <c-k> <esc>
vnoremap <c-k> <esc>
nnoremap <leader>j ddp
nnoremap <leader>k ddkP
inoremap <leader>u <esc>gUiwea
nnoremap <leader>u gUiwE

nnoremap <leader>ev :vsplit $HOME/.vimrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap H ^
nnoremap L $

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>

iabbrev @@ jonmoore510@gmail.com
iabbrev ccopy Copyright 2020 Jon Moore, all rights reserved.

iabbrev shoudl should
iabbrev coudl could
iabbrev woudl would

autocmd FileType javascript,typescript,c,cpp,python :iabbrev ret return;<left>

augroup filetype_html
	autocmd!
	autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

" Enable Prettier autoformatter
let g:prettier#autoformat=1
" Don't require files to be marked with @prettier/@format decorators
let g:prettier#autoformat_require_pragma=0

" No more 'Hit Enter' messages
set shortmess=at

" Vimscript file settings ------------
" {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" set statusline=%.50F%=Current\ line: %4l\ of\ %4L

set statusline=%.50F\ %{strftime('%c')}
set statusline+=%=
set statusline+=\ line\ >>%4l/%2L\ ::\ column\ >>%4c\ 

call plug#begin()
Plug 'francoiscabrol/ranger.vim'
      Plug 'ycm-core/YouCompleteMe'
      
   " One Dark theme
   Plug 'joshdick/onedark.vim'

 " Rainbow Brackets
   Plug 'luochen1990/rainbow'

 " Language Support
   " Plug 'fatih/vim-go'
   Plug 'ap/vim-css-color'
   " Plug 'vim-ruby/vim-ruby'
   Plug 'leafgarland/typescript-vim'
   Plug 'ianks/vim-tsx'

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

 " 	Outliner
   Plug 'vimoutliner/vimoutliner'

 " For Denite features
   Plug 'Shougo/denite.nvim'

 " Prettier
   Plug 'prettier/vim-prettier'

 " Submode
   Plug 'kana/vim-submode'

call plug#end()

for file in split(globpath("~/.vim/rc", "*.vim"), '\n')
  execute 'source' fnameescape(file)
endfor

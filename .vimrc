" Color and Style Configuration
"
" set termguicolors
syntax enable
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
    Plug 'joshdick/onedark.vim'
    " youcompleteme
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
    " NERD Tree
    Plug 'scrooloose/nerdtree'
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
    " Plug 'dense-analysis/ale'
    " Prettier
    " Plug 'prettier/vim-prettier', {
    "   \ 'do': 'yarn install',
    "   \ 'for': [
    "     \ 'javascript',
    "     \ 'typescript',
    "     \ 'css',
    "     \ 'less',
    "     \ 'sass',
    "     \ 'scss',
    "     \ 'json',
    "     \ 'graphql',
    "     \ 'markdown',
    "     \ 'vue',
    "     \ 'yaml',
    "     \ 'html',
    "     \ 'swift',
    "     \ 'java'] }
call plug#end()

colorscheme onedark
" Enable Sass syntax highlighting
autocmd FileType css,sass,scss setlocal omnifunc=csscomplete#CompleteCSS
let g:deoplete#enable_at_startup = 1

" Nerd tree
map <leader>n :silent :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" File compatabiliy and configuration

" if hidden is not set, textedit might fail
set hidden

" no backup files
set nobackup
set nowritebackup

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

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other
" plugin.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Use c-space to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion. `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostics=prev)
nmap <silent> ]g <Plug>(coc-diagnostics=next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >=0)
        execute 'h '.expand('<cword')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specifed filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current
" paragraph
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" Remap codeAction of current line
nmap <leader>ac <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf <Plug>(coc-fix-current)

" Create mappings for function text object. Requires document symbols feature
" of languageserver
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" set tab to 4
set ts=4
set shiftwidth=4
set expandtab
set wrap
set indentexpr=off
set nohlsearch

" relative numbers
set number 
set relativenumber
nnoremap k gk

nnoremap j gj
" Leader
let mapleader=","


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
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
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

nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==
inoremap <A-k> <Esc>:m .-2<CR>gi
inoremap <A-j> <Esc>:m .+1<CR>gi
vnoremap <A-k> :m >.-2<CR>==

" Mappings -or moving lines up and down
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


" Navigation
" ==================================
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
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>
nnoremap sj <C-W><C-J>
nnoremap sk <C-W><C-K>
nnoremap sl <C-W><C-L>
nnoremap sh <C-W><C-H>
nnoremap ss :split<Enter>
nnoremap sv :vs<Enter>

" Easier split resizing
call submode#enter_with('grow/shrink', 'n', '', '<leader><up>', '<C-w>3+')
call submode#enter_with('grow/shrink', 'n', '', '<leader><down>', '<C-w>3-')
call submode#map('grow/shrink', 'n', '', '<down>', '<C-w>3-')
call submode#map('grow/shrink', 'n', '', '<up>', '<C-w>3+')
call submode#enter_with('grow/shrink', 'n', '', '<leader><right>', '<C-w>5>')
call submode#enter_with('grow/shrink', 'n', '', '<leader><left>', '<C-w>5<')
call submode#map('grow/shrink', 'n', '', '<left>', '<C-w>5<')
call submode#map('grow/shrink', 'n', '', '<right>', '<C-w>5>')

" More split stuff: swap and quit inactive
nnoremap <A-r> <C-w>R
nnoremap <A-q> <C-w>o


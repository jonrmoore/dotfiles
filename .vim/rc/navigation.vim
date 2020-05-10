" Navigation
" ==================================
nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==
inoremap <A-k> <Esc>:m .-2<CR>gi
inoremap <A-j> <Esc>:m .+1<CR>gi
vnoremap <A-k> :m >.-2<CR>==

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


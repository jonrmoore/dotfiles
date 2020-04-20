" Plugin settings
" ====================================
filetype plugin indent on
" Initialize Vim Vinegar with dot files hidden. 'gh' to toggle hidden dot
" files.

" --> Vinegar
"  ----------------
        let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
        set modifiable

" --> Rainbow Brackets
"  ----------------
        let g:rainbow_active=1 " for rainbow brackets

" --> CSS, SCSS, SASS, LESS
"  ----------------
        autocmd FileType css,sass,scss,less setlocal omnifunc=csscomplete#CompleteCSS
        let g:deoplete#enable_at_startup = 1

" --> Nerd tree
"  ----------------
        map <leader>n :silent :NERDTreeToggle<CR>
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

        " Show hidden files in NERDTree
        let g:NERDTreeShowHidden=1

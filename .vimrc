call plug#begin()

    " Let Vundle handle itself
      Plug 'VundleVim/Vundle.vim'

    " One Dark theme
      Plug 'joshdick/onedark.vim'

    " CoC
      Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Rainbow Brackets
      Plug 'luochen1990/rainbow'

    " Language Support
      Plug 'fatih/vim-go'
      Plug 'ap/vim-css-color'
      Plug 'vim-ruby/vim-ruby'
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

    " NERD Tree
      Plug 'scrooloose/nerdtree'

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

    " Outliner
      Plug 'vimoutliner/vimoutliner'

    " For Denite features
      Plug 'Shougo/denite.nvim'

    " Asych linting
      Plug 'dense-analysis/ale'

    " Submode
      Plug 'kana/vim-submode'

call plug#end()

for file in split(globpath("~/.vim/rc", "*.vim"), '\n')
  execute 'source' fnameescape(file)
endfor

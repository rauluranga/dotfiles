"Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 NeoBundle 'Shougo/vimproc.vim', {
  \ 'build' : {
  \     'windows' : 'tools\\update-dll-mingw',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make -f make_mac.mak',
  \     'linux' : 'make',
  \     'unix' : 'gmake',
  \    },
  \ }

 NeoBundle 'Shougo/unite.vim'
 NeoBundle 'ujihisa/unite-colorscheme'
 "NeoBundle 'sgur/unite-everything'
 NeoBundle 'chriskempson/base16-vim'
 NeoBundle 'elzr/vim-json'
 NeoBundle 'digitaltoad/vim-jade'
 NeoBundle 'leafgarland/typescript-vim'
 NeoBundle 'tpope/vim-haml'
 NeoBundle 'mattn/emmet-vim'
 NeoBundle 'tpope/vim-rails'
 NeoBundle 'tpope/vim-bundler'
 NeoBundle 'terryma/vim-multiple-cursors'
 NeoBundle 'vim-scripts/Rename2'
 NeoBundle 'ervandew/supertab'
 
 NeoBundle 'vim-airline/vim-airline'
 NeoBundle 'vim-airline/vim-airline-themes'
 NeoBundle 'tpope/vim-fugitive'

 NeoBundle 'Shougo/neocomplete.vim'
 NeoBundle 'thinca/vim-quickrun'
 NeoBundle 'thinca/vim-ref'
 NeoBundle 'osyo-manga/shabadou.vim'
 NeoBundle 'osyo-manga/vim-watchdogs'
 
 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 "nnoremap <C-p> :Unite -start-insert file file_rec buffer everything<cr>
 nnoremap <C-p> :Unite -start-insert file file_rec buffer
 nnoremap <space>/ :Unite -start-insert grep:.<cr>
 nnoremap <space>l :Unite -start-insert line<cr>
 call unite#custom#source('file_rec', 'ignore_globs', ['node_modules/**','bower_components/**', '.idea/**', '.git/**'])
 call unite#custom#source('grep', 'ignore_globs', ['node_modules/**','bower_components/**', '.idea/**', '.git/**']) 
 " use zsh for shell (:sh)
 set shell=/bin/zsh

 " General settings
 set nocompatible
 set encoding=utf8

 " Filetype
 filetype plugin on
 syntax on
 syntax enable
 set backspace=indent,eol,start
 set tabstop=2
 set softtabstop=2
 set expandtab
 set autoindent

 " Search
 set hlsearch
 set incsearch
 set smartcase
 set ignorecase

 " Layout
 set ruler
 set number
 set laststatus=2
 set noshowmode

 " Colors
 set t_Co=256
 set background=dark
 colorscheme base16-ocean
 set fillchars+=stl:\ ,stlnc:\
 set term=xterm-256color
 set termencoding=utf8

 " Navigation (Do you have mouse enabled in your term?)
 " set mouse=a

 " Airline
 let g:airline_powerline_fonts = 1
 let g:airline_theme='base16_eighties'


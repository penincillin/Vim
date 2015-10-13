" vimrc of penincillin

" self preference{{{
    " use syntax highlighting       
    syntax enable
    syntax on
    " hide tool bar
    set go=
    " close compatibility with vi
    set nocompatible
    " show line number
    set number
    " show status bar in the bottom
    set ruler
    " set auto indent 
    set autoindent
    set cindent
    filetype plugin indent on
    " set indentation to 4 space by default
    set tabstop=4 
    set softtabstop=4 
    set shiftwidth=4 
    set expandtab
    " set auto space size to 4 space
    set sw=4
    " set tab size to 4 space
    set ts=4
    " show most lines
    set dy=lastline
    " set search result highlighting
    set hlsearch
    " begin search after typing the first character 
    set incsearch
    " solve problem of backspace using
    set backspace=indent,eol,start
    " set number of lines vim has to remember
    set history=100
    " set height of cmd
    set cmdheight=2
    " set no backup file
    set nobackup 
    " set font type and size
    set guifont=DejaVu\ Sans\ mono\ 11
    " auto change current dir to be editing files
    set autochdir
    " size of vim windows
    set lines=50 columns=100
    " show inputing command
    set showcmd
    " set colorschmem
    colo codeschool
    let g:molokai_original = 1
    set background=dark
    " auto check file type
    filetype on
    " set fold method
    set foldmethod=marker
" }}}


" file encoding settings{{{
    let &termencoding=&encoding
    set fileencodings=utf-8,gbk,utf-16,usc-bom,cp936
    source $VIMRUNTIME/mswin.vim
    behave mswin
"}}}


" self mapping settings{{{
   :map zz ZZ
    :map sa $a
    :map ssa $i
    :map so O
    :map si ^i
    :map sf F
    :map bd :g/^\s*$/d<Enter>
    :map ra ggdG
    :map <F2> $a{<Enter>}<Esc>O
    :map <C-F2> $a{<Enter>};<Esc>O
    :map <F3> I#<Esc>j
    :map sl <C-w>l
    :map sh <C-w>h
    :map sj <C-w>j
    :map sk <C-w>k
    :map vim :tabedit<Space>$MYVIMRC<Enter>
    :map vn <C-N>
" }}}

" vundel {{{
    set nocompatible              " be iMproved, required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    " power status line
    Plugin 'bling/vim-airline'
    " find files directly
    Plugin 'scrooloose/nerdtree'
    " syntax checker
    Plugin 'scrooloose/syntastic'
    " code complete
    Plugin 'Valloric/YouCompleteMe'
    " ctrlp
    Plugin 'kien/ctrlp.vim'
    
    
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line
" }}}


" plugin settings{{{
    "airline{{{
        set laststatus=2
    "}}}

    "NERDTree{{{
        map <F4> :NERDTreeMirror<CR>
        map <F4> :NERDTreeToggle<CR>
        "Brief help:
        "o: open file in current tab
        "go: keep cursor in current file while open a new file
        "t: open file in another tab
        "T: open file in another tab while keep cursor in current file
        "i: open file vertically
        "s: open file horizontally
        "gs, gi: behaves like go
        "p: cd ..
        "P: cd /
    "}}}

    "syntastic{{{

        "set statusline+=%{SyntasticStatuslineFlag()}
        "set statusline+=%*

        "let g:syntastic_always_populate_loc_list = 1
        " not show style error and warnings
        let g:syntastic_quiet_messages = { "type": "style", "level": "warnings" }
        " Auto close, but not auto open.
        "let g:syntastic_auto_loc_list = 2
        "let g:syntastic_check_on_open = 1
        "let g:syntastic_check_on_wq = 0
    "}}}

    "youcompleteme{{{
        let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
        let g:ycm_confirm_extra_conf = 0
    "}}}

    "ctrlp{{{
        let g:ctrlp_map = '<c-p>'
        let g:ctrlp_cmd = 'CtrlP'
        set wildignore+=*.pyc
        set wildignore+=*.out
        let g:ctrlp_custom_ignore = 'node_modules'
    "}}}
"}}}


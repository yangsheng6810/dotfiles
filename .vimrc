" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2008 Jul 02
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif


inoremap <M-h> <left>
inoremap <M-j> <down>
inoremap <M-k> <up>
inoremap <M-l> <right>
inoremap <C-a> <Esc>I<Esc>
inoremap <C-e> <Esc>A<Esc>
colorscheme desert
"inoremap <Esc> <Esc>
set whichwrap=b,s,<,>,[,]
set whichwrap+=l,h
"编码自动识别
set encoding=utf-8
set fencs=utf-8,cp936,gb18030,gbk,gb2312

"let g:vimim_datafile="/home/yangsheng/.vim/vimim.pinyin_quote_sogou.txt"
"let g:vimim_enable_smart_space=1
"let g:vimim_enable_dynamic_menu=1
"let g:vimim_enable_fuzzy_search=1
"let g:vimim_enable_fuzzy_pinyin=1
"let g:vimim_enable_menu_label=1
set ignorecase
set guifont=文泉驿等宽微米黑\ 11
set guioptions-=T
set guioptions+=l

" --- Extra Visual Info ---
:syn on                      " Syntax highlighting
":set spell                   " spell checking (if you like)
set showmatch                " When a bracket is inserted, briefly jump to a matching one
set incsearch                " Incremental search


" --- Tab settings ---
set tabstop=4
set shiftwidth=4
" Expand tabs for Python coding only (C/C++ in blender uses tabs)
set expandtab
set smarttab


" ---- indenting ----
set autoindent " auto indent
set smartindent " smart indent
set ci " C/C++ indents
set cin " -


" --- Column/Row Stuff ---
set cul                      " Highlight the current line
:set number                  " Show Line Numbers
":set lines=40 columns=120    " Window Size
":set colorcolumn=120         " Right Margin


set scrolloff=3              " Scroll when cursor gets within 3 characters of top/bottom edge


" --- Extra Functionality Helpers ---
set autochdir                " cd into buffer editing

filetype plugin on
filetype indent on           " Indent

" auto-complete
set ofu=syntaxcomplete#Complete


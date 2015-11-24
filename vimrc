" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
" set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Encoding
set encoding=utf-8

" Pathogen
" all files which are placed in ~/.vim/bundle are loaded automatically
execute pathogen#infect()

" Orange line numbers on the left
set number

" If backspace key doesn't stop for reasons
set bs=2

" Rebind <Leader> key
let mapleader = ","

" bind Ctrl+<movement> keys to move around the windows, instead of using
" Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" Background
highlight Normal ctermfg=grey ctermbg=black

" Color scheme
set t_Co=256
colorscheme thornbird

" Color for linenumbers
highlight LineNr term=bold cterm=NONE ctermfg=Grey ctermbg=NONE

" Width of document (used by gd)
set tw=79
" Dont automatically wrap on load
set nowrap
" Don't automatically wrap text when typing
set fo-=t 

" Line to show where 80 characters are
set colorcolumn=80 
highlight ColorColumn ctermbg=Darkgrey

" Disable stupid backup and swap files
set nobackup
set nowritebackup
set noswapfile

" permanent status bar with filename
set laststatus=2

" more tabs shown
set tabpagemax=15

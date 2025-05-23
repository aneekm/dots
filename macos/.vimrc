set nocompatible    "Kill vi-compatibility"
set t_Co=256	    "256 color
set encoding=utf-8  "UTF-8 character encoding

" Tabs & Indenting
set tabstop=4	    "number of visual spaces per TAB
set softtabstop=4	"number of spaces in tab when EDITING
set shiftwidth=4	"number of spaces in tab when not editing
set expandtab		"expand tabs to spacesi
set autoindent		"match indentation on new lines to prev lines

" Formatting and Movement
set formatoptions=croq      "comment formatting
set nostartofline   "Vertical movement preserves horizontal position
set backspace=indent,eol,start      "Better backspacing
set ttyfast         "Speed up vim
set clipboard=unnamed       "Copy-paste from system clipboard
autocmd BufWritePre * :%s/\s\+$//e  "Trim whitespace from end of lines

" UI
colorscheme slate
set number			"show line numbers
syntax enable	    "enable syntax processing
filetype plugin indent on	"filetype-based formatting on
set lazyredraw		"don't redraw while running macros (faster)
set showmatch		"Highlight matching braces
set ruler			"Show bottom ruler stats
set title           "Window title is filename
set scrolloff=10    "Keep cursor within 5 lines from top and bottom
set sidescrolloff=5 "Keep cursor within 5 lines from left and right
" set wrap            "Visually wrap long lines
set nowrap          "Don't do any wrapping (not useful for dev Mac vim)
set linebreak       "Wrap on 'good' characters for wrapping
" set colorcolumn=80  "Highlight line 80 (removed because I code in IDE on this Mac)

" Status Line
set laststatus=1    "Default (appears on split frames, otherwise hidden)
" TODO: come back to this at some point and get a decent looking statusline
" set up. Generator: tdaly.co.uk/projects/vim-statusline-generator/

" Searching
set hlsearch		"Highlight search results
set incsearch		"Search as characters are entered
set ignorecase      "Search ignoring case
set smartcase       "Search using smartcase (in specific scenarios of capitals)
set wildmode=longest,list   "Better unix-like tab completion

" Windows
set equalalways     "Windows are always the same size


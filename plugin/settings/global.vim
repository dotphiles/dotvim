"
" dotvim : https://github.com/dotphiles/dotvim
"
" Set global settings for vim
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

set nocompatible

if has("syntax")
  syntax on
  filetype plugin indent on
endif

set encoding=utf-8
set binary

" presentation settings
set number              " precede each line with its line number
set numberwidth=3       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ruler               " line and column number of the cursor position
set wildmenu            " enhanced command completion
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status lines
set list listchars=tab:→\ ,trail:▸
set cursorline
set clipboard=unnamed

if has("user_commands")
  colorscheme solarized
  set background=dark
endif

" highlight spell errors
hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black
" toggle spell check with F7
map <F7> :setlocal spell! spell?<CR>

" behavior
" ignore these files when completing names and in explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set shell=$SHELL        " use current shell for shell commands
set autowriteall        " Automatically save before commands like :next and :make
set hidden              " enable multiple modified buffers
set history=1000
set autoread            " automatically read feil that has been changed on disk and doesn't have changes in vim
set backspace=indent,eol,start
set guioptions-=T       " disable toolbar"
set completeopt=menuone,preview
set cinoptions=:0,(s,u0,U1,g0,t0 " some indentation options ':h cinoptions' for details
set modelines=5         " number of lines to check for vim: directives at the start/end of file
set autoindent          " automatically indent new line

set ts=4                " number of spaces in a tab
set sw=4                " number of spaces for indent
set et                  " expand tabs into spaces

" mouse settings
if has("mouse")
  set mouse=a
endif
set mousehide           " Hide mouse pointer on insert mode."

" search settings
set incsearch           " Incremental search
set hlsearch            " Highlight search match
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS

if has("user_commands")
  " omni completion settings
  set ofu=syntaxcomplete#Complete
  let g:rubycomplete_buffer_loading = 0
  let g:rubycomplete_classes_in_global = 1
endif

" directory settings
set nobackup            " do not write backup files
set noswapfile          " do not write .swp files
if has("persistent_undo")
  silent !mkdir -vp ~/.backup/vim/undo/ > /dev/null 2>&1
  set backupdir=~/.backup/vim,.       " list of directories for the backup file
  set directory=~/.backup/vim,~/tmp,. " list of directory names for the swap file
  set undofile
  set undodir=~/.backup/vim/undo/,~/tmp,.
endif

" folding
if has("folding")
  set foldcolumn=0        " columns for folding
  set foldmethod=indent
  set foldlevel=9
  set nofoldenable        "dont fold by default "
endif

" extended '%' mapping for if/then/else/end etc
runtime macros/matchit.vim

if has("user_commands")
  let mapleader = ","
  let maplocalleader = "\\"
endif

" Allow saving of files as sudo when I forgot to start vim using
" sudo.
cmap w!! %!sudo tee > /dev/null %

" For a nice, huuuuuge viminfo file
if has("viminfo")
  set viminfo='100,f1,:100,/100,n$HOME/.vim/.viminfo
endif

" Remember last position in file
if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif


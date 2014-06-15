"
" dotphiles : https://github.com/dotphiles/dotphiles
"
" Essential vim plugins!
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

" Vundle itself
Bundle 'gmarik/vundle'

" General
if count(g:vundles, 'general')
  Bundle 'scrooloose/nerdtree'
  Bundle 'chriskempson/base16-vim'
  Bundle 'YankRing.vim'
  let g:yankring_history_dir = $HOME.'/.vim/'
  let g:yankring_history_file = '.yankring_history'
  ""Bundle 'tpope/vim-repeat'
  ""Bundle 'AutoClose'
  Bundle 'kien/ctrlp.vim'
  Bundle 'jistr/vim-nerdtree-tabs'
  Bundle 'sudo.vim'
  Bundle 'bronson/vim-trailing-whitespace'
  Bundle 'mbbill/undotree'
  Bundle 'mhinz/vim-signify'
  Bundle 'Raimondi/delimitMate'
  Bundle 'bling/vim-airline'
  Bundle 'rodjek/vim-puppet'
endif

if count(g:vundles, 'git')
  if executable('git')
    Bundle 'tpope/vim-fugitive'
  endif
endif

if count(g:vundles, 'hg')
 if executable('hg')
    Bundle 'k-takata/hg-vim'
  endif
endif
" General Programming
if count(g:vundles, 'programming')
  Bundle 'godlygeek/tabular'
  if executable('ack')
    Bundle 'mileszs/ack.vim'
  endif
  if v:version > 700
    Bundle 'scrooloose/syntastic'
    if executable('ctags')
      Bundle 'majutsushi/tagbar'
    endif
endif
endif

if count(g:vundles, 'completion')
    Bundle 'Shougo/neocomplcache'
    Bundle 'Shougo/neosnippet'
    Bundle 'Shougo/neosnippet-snippets'
    Bundle 'scrooloose/snipmate-snippets'
    Bundle 'honza/vim-snippets'
    Bundle 'Indent-Guides'
endif

" PHP
if count(g:vundles, 'php')
  Bundle 'spf13/PIV'
endif

" Python
if count(g:vundles, 'python')
  Bundle 'hynek/vim-python-pep8-indent'
  let g:syntastic_python_flake8_args='--ignore=E501'
endif

" Javascript
if count(g:vundles, 'javascript')
  Bundle 'leshill/vim-json'
  Bundle 'groenewege/vim-less'
  Bundle 'taxilian/vim-web-indent'
endif

" HTML
if count(g:vundles, 'html')
  Bundle 'HTML-AutoCloseTag'
  Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
  Bundle 'juvenn/mustache.vim'
endif

" Ruby
if count(g:vundles, 'ruby')
  Bundle 'tpope/vim-rails'
endif

" Misc
if count(g:vundles, 'misc')
  Bundle 'tpope/vim-markdown'
  Bundle 'spf13/vim-preview'
  Bundle 'tpope/vim-cucumber'
  Bundle 'markcornick/vim-vagrant'
  Bundle 'Puppet-Syntax-Highlighting'
  Bundle 'ekalinin/Dockerfile.vim'
  if v:version > 701
    Bundle 'zhaocai/GoldenView.Vim'
  endif
  let g:goldenview__enable_default_mapping=0
endif

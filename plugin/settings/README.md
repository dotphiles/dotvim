dotvim plugins
==============

A framework for setting up vim and plugins using vundle.

Installation
------------

Edit `vimrc`

    let g:vundles=['general', 'programming', 'php', 'ruby', 'python', 'javascript', 'html', 'misc']

or

    pluginname

And enable *vundles* to install, see plugin/settings/README.md

    :BundleInstall (in vim will install plugins)
    :BundleClean (in vim will remove unused plugins)


Neocomplcache is enabled by default, in the template `vimrc`

    let g:neocomplcache_enable_at_startup = 1
    " Tell Neosnippet about the other snippets
    let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets

Configure any additional plugins in your copy of `vimrc`

Plugins groups:

  - General
    - scrooloose/nerdtree
    - altercation/vim-colors-solarized
    -  tpope/vim-surround
    - AutoClose
    - vimwiki
    - calendar.vim--Matsumoto
    - kien/ctrlp.vim
    - vim-scripts/sessionman.vim
    - matchit.zip
    - Lokaltog/vim-powerline
    - Lokaltog/vim-easymotion
    - jistr/vim-nerdtree-tabs
    - flazz/vim-colorschemes
    - corntrace/bufexplorer
    - kien/ctrlp.vim
    - austintaylor/vim-indentobject
    - SearchComplete
    - sudo.vim
    - bronson/vim-trailing-whitespace
    - tpope/vim-fugitive
    - honza/snipmate-snippets
    - Shougo/vimproc
  - Programming
    - scrooloose/syntastic
    - scrooloose/nerdcommenter
    - godlygeek/tabular
    - majutsushi/tagbar
    - Shougo/neocomplcache
    - Shougo/neosnippet
    - Indent-Guides
  - PHP
    - spf13/PIV
  - Python
    - klen/python-mode
    - python.vim
    - python_match.vim
    - pythoncomplete
  - Javascript
    - leshill/vim-json
    - groenewege/vim-less
    - taxilian/vim-web-indent
  - HTML
    - HTML-AutoCloseTag
    - ChrisYip/Better-CSS-Syntax-for-Vim
  - Ruby
    - tpope/vim-rails
  - Misc
    - spf13/vim-markdown
    - spf13/vim-preview
    - tpope/vim-cucumber
    - Puppet-Syntax-Highlighting


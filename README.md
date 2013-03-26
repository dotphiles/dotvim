dotvim
======

A framework for setting up vim and plugins using vundle.

Installation
------------

From your homedirectory:

    git clone --recursive git://github.com/dotphiles/dotvim.git .vim
    cp .vim/templates/vimrc .vimrc
    cp .vim/templates/gvimrc .gvimrc

Edit `vimrc`

    let g:vundles=['general', 'programming', 'php', 'ruby', 'python', 'javascript', 'html', 'misc']

Configure any additional plugins in your copy of `vimrc`

    Bundle 'reponame'

And enable *vundles* to install, see plugin/settings/README.md

    :BundleInstall (in vim will install plugins)
    :BundleClean (in vim will remove unused plugins)

Neocomplcache is enabled by default, in the template vimrc

    let g:neocomplcache_enable_at_startup = 1
    " Tell Neosnippet about the other snippets
    let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets'

Plugins groups:

  - General
    - scrooloose/nerdtree
    - altercation/vim-colors-solarized
    - tpope/vim-surround
    - delimitMate
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

General configuration
---------------------

`,` is used as mapleader
`backslash` is used as localleader

* `,e` mapped to `:e **/`. essentially you do `,efoo<tab>` to get a list of all files starting with foo
* `,s` - toggle invisible characters display
* `,n` - next `quicklist` result (like :Ggrep etc)
* `,N` - previous `quicklist` result (like :Ggrep etc)
* `Ctrl-E` - switch between 2 last buffers  (its just a `:b#<cr>` :)
* `Ctrl-N` to cancel current search highlighing
* `,f` global Ggrep for word under the cursor or for selection
* `+`, `-` - easily inc/decrement integers
* `,W` - remove trailing spaces
* `Ctrl-g`/`h`/`j`/`k` - simplified split panes navigation

Check out the 'plugin/settings/\*.vim' for more...

Backups
-------

Backups and swapfiles are disabled. I really hate them both.

You can re-enable backups by adding the following to your `~/.vimrc`:

    set backup

 and swapfiles by

    set swapfile

backup dir is set to ~/.backup/vim/

The directory is created if it doesn't exist.

Persistent Undo
---------------

Persistent undos are enabled by default.

You can disable by adding the following to your `~/.vimrc`:

    set noundo

### Misc Bindings

The following is a list of commands and key bindings that I personally find interesting
stored for easy refreshing my memory of them. there is no much 'system' to it, just
randomly chosen bits of vim goodness.

* `]p` paste with autoindent.
* `ga` print ascii value of character under the cursor
* `g#` like "#", but without using "\<" and "\>"
* `g<` display previous command output
* `zt` scroll cursor line to top
* `zz` scroll cursor line to center
* `zb` scroll cursor line to bottom
* `CTRL-W x` exchange current window with n-th window (or next if no count given)
* `gv` reselect last selection
* `gt` next tab
* `gT` prev tab
* `ci` change inside delimiters
* `di` delete inside delimiters
* `@@` execute last macro
* `"xyy` copy line into `x` register (replace x with any other)
* `<C-R>x` while in insert mote will paste content of register x (replace x with any other)
* `"xp` paste from register x
* `:reg` Display the contents of all numbered and named registers.

License
-------

Copyright (c) 2012 [dotvim contributers][1]

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[1]: https://github.com/dotphiles/dotvim/graphs/contributors


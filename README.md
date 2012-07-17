dotvim
======

A framework for settinsg up vim using pathogen

Installation
------------

From your homedirectory:

    git --recursive clone git://github.com/dotvim/dotvim.git .vim
    cp .vim/templates/vimrc-example .vimrc

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

Contribute
----------

This project would not exist without all of its users and [contributors][9].

If you have ideas on how to make the configuration easier to maintain or
improve its performance, do not hesitate to fork and send pull requests.

### Issue Reporting

   - Check that the issue has not already been reported.
   - Check that the issue has not already been fixed in the latest code.
   - Open an issue with a clear title and description in grammatically correct,
     complete sentences.

### Pull Request

   - Read [how to properly contribute to open source projects on GitHub][10].
   - Use a topic branch to easily amend a pull request later, if necessary.
   - Write [good commit messages][11].
   - Squash commits on the topic branch before opening a pull request.
   - Use the same coding style and spacing.
   - Open a [pull request][12] that relates to but one subject with a clear
     title and description in gramatically correct, complete sentences.

License
-------

Copyright (c) 2012 Ben O'Hara <bohara@gmail.com>

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

[9]: https://github.com/dotphiles/dotzsh/contributors
[10]: http://gun.io/blog/how-to-github-fork-branch-and-pull-request
[11]: http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
[12]: https://help.github.com/articles/using-pull-requests


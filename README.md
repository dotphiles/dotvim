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
This project would not exist without all of its users and [contributors][1].

If you have ideas on how to make the configuration easier to maintain or
improve its performance, do not hesitate to fork and send pull requests.

If you want to contribute to the project, check out the list of open [issues][2]

You can:

 - raise an issue
 - suggest a feature

If you would like to contribute code to the project:

  1. A bit of background reading:
    - [Setting up Git for Windows and connecting to GitHub][3]
    - [The Simple Guide to Git][4]
    - [How to GitHub: Fork, Branch, Track, Squash and Pull Request][4]
    - [Write good commit messages][11].
  2. [Fork the repository][5]
  3. Make some changes to the code base
  4. [Send us a Pull Request once you're happy with it][6]

We'll do a bit of a code review before accepting your patch.

### Git Flow

We use the Git Flow branching model, [first described][7] by [nvie][8],
so dotphiles's `master` branch moves on only at specific points, when we're
really sure we want to promote something to production.

**Use of Git Flow is not required for contributing to dotphiles**, particularly
if you're submitting a bug-fix or small feature.  Its use is recommended for
larger changes where `develop` might move on whilst you're completing your work.

#### Configuring Git Flow

There is a set of [helper scripts][9] that will work on both Unix-based
operating systems and Windows.  Follow the appropriate 
[installation instructions][10] for your operating system, and configure your
working copy repository for use with Git Flow by typing `git flow init`.
Accept all the default options to the questions that it asks you.

#### Using Git Flow

Pick a feature or bug to work on and create a new branch for that work by
typing `git flow feature start <featurename>`.  This will create you a new
*feature branch* for your work called `feature/<featurename>`, and you can use
git as usual from this point.

Once your feature is finished, type `git flow feature publish <featurename>`.
This will copy the *feature branch* to your `origin` repository on GitHub and
you will then be able to submit a pull request to have it merged into dotphiles
own `develop` branch.

**Note: do not use `git flow feature finish <featurename>`!**

This will automatically merge your *feature branch* back into `develop` and
delete the *feature branch*, making it harder for you to submit your pull
request.

If you wish to update your published feature branch after the initial publish,
use a regular `git push origin feature/<featurename>`.  This will also update
your pull request if you have one open for that branch.

If you find dotphiles `develop` branch has moved on, and you need/want to take
advantage of the changes made there, you can update your feature branch as
follows:

  1. Ensure you have a remote configured for the upstream repository.

       git remote add upstream git://github.com/dotphiles/dotphiles.git

  2. Update your local repository with the upstream refs.

        git pull upstream develop:develop`

  3. Rebase your feature branch on top of the new `develop`.

        git flow feature rebase <featurename>

There is a lot of help available for Git Flow, which can be accessed by typing
`git flow feature help`.

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

[1]: https://github.com/dotphiles/dotvim/contributors
[2]: https://github.com/dotphiles/dotvim/issues
[3]: http://help.github.com/win-set-up-git/
[4]: http://rogerdudler.github.com/git-guide/
[5]: http://help.github.com/fork-a-repo/
[6]: http://help.github.com/send-pull-requests/
[7]: http://nvie.com/posts/a-successful-git-branching-model/
[8]: http://www.twitter.com/nvie
[9]: https://github.com/nvie/gitflow
[10]: https://github.com/nvie/gitflow/wiki/Installation
[11]: http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html


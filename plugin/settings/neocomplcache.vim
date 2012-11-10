"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup neocomplcache
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"
"

if exists('g:loaded_neocomplcache')
  let g:neocomplcache_enable_at_startup = 1
  let g:neocomplcache_enable_camel_case_completion = 1
  let g:neocomplcache_enable_underbar_completion = 1
  let g:neocomplcache_enable_smart_case = 1

  " default # of completions is 100, that's crazy
  let g:neocomplcache_max_list = 5

  " Tab / Shift-Tab to cycle completions
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"

  " SuperTab like snippets behavior.
  imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ?  "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

  " words less than 3 letters long aren't worth completing
  let g:neocomplcache_auto_completion_start_length = 3

  " Map standard Ctrl-N completion to Cmd-Space
  inoremap <D-Space> <C-n>

  " This makes sure we use neocomplcache completefunc instead of
  " the one in rails.vim, otherwise this plugin will crap out
  let g:neocomplcache_force_overwrite_completefunc = 1

  " Define keyword.
  if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
  endif
  let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  " Enable heavy omni completion.
  if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
  endif
  let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
endif

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets'

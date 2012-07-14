"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup conque
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

let g:Conque_Read_Timeout = 50 " timeout for waiting for command output.
let g:Conque_TERM = 'xterm'
" ,sh shell window
nmap <Leader>sh :ConqueSplit bash<cr>
" ,r run command
nmap <Leader>R :ConqueSplit


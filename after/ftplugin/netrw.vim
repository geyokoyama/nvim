"" Navigation
" toggle hidden files
nmap <buffer> . gh
" close preview window
nmap <buffer> P <c-w>z
" open/close directory or open file
nmap <buffer> o <cr>
" close netrw or open file and close netrw
nmap <buffer> O <cr>:Lexplore<cr>

" Autocommands
setlocal bufhidden=wipe  " prevent netrw from creating empty buffers when :set hidden

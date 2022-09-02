" ----------------------------------------
" KEY BINDINGS
" ----------------------------------------

"" Insert Mode
" <Esc> remap
inoremap jk <Esc>

"" Normal Mode
" edit/source vimrc
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>

" toggle hidden characters
nnoremap <silent> <F3> :set list!<CR>

" remove all trailing whitespaces
nnoremap <silent> <F5> :call strip_trailing_whitespaces#StripTrailingWhitespaces()<CR>

" easier tab navigation
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

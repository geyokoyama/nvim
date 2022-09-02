" ****************************************
" Author: George E. Yokoayama
" Repo: https://github.com/geyokoyama/nvim
" Website: https://www.geyokoyama.com/
" ****************************************

" ----------------------------------------
" Initial Setup
" ----------------------------------------
"" Plugin Manager - vim-plug(junegunn/vim-plug)
" Install vim-plug & plugins if vim-plug not found
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ----------------------------------------
" EDITOR BEHAVIOR
" ----------------------------------------

"" Temporary Files
" backups
"if !isdirectory('~/.config/nvim/.tmp/backup')
  "call mkdir($HOME.'/.config/nvim/.tmp/backup', 'p')
"endif
"set backupdir=/.tmp/backup,~/.config/nvim/.tmp/backup//
"set backup

" swap files
if !isdirectory('~/.config/nvim/.tmp/swap')
  call mkdir($HOME.'/.config/nvim/.tmp/swap', 'p')
endif
set directory=/.tmp/swap,~/.config/nvim/.tmp/swap//

" undo files
"if !isdirectory('~/.config/nvim/.tmp/undo')
  "call mkdir($HOME.'/.config/nvim/.tmp/undo', 'p', 0700)
"endif
"set undodir=/.tmp/undo,~/.config/nvim/.tmp/undo//
"set undofile

" ----------------------------------------
" PLUGINS
" ----------------------------------------
call plug#begin('~/.config/nvim/plugged')

"" Interface
Plug 'rakr/vim-one'                                             " vim-one theme
Plug 'vim-airline/vim-airline'                                  " improved status bar
Plug 'vim-airline/vim-airline-themes'                           " status bar theme

"" Utility
Plug 'easymotion/vim-easymotion'                                " easier cursor movement
Plug 'preservim/nerdcommenter'                                  " easy commenting
Plug 'justinmk/vim-dirvish'                                     " path navigator
Plug 'kristijanhusak/vim-dirvish-git'                           " vim-dirvish plugin
Plug 'tpope/vim-fugitive'                                       " git plugin
Plug 'mbbill/undotree'                                          " visualize undo branches
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }             " enable fzf in neovim
Plug 'ap/vim-css-color'                                         " color preview

"" Code Completion
Plug 'mattn/emmet-vim'                                          " HTML & CSS snippets
Plug 'raimondi/delimitmate'                                     " automatic closing of brackets
Plug 'ervandew/supertab'                                        " <tab> to cycle through patterns
Plug 'neoclide/coc.nvim', { 'branch': 'release' }               " completion engine
Plug 'tpope/vim-surround'                                       " add surrounding pairs

"" Language
Plug 'pangloss/vim-javascript'                                  " JavaScript
Plug 'maxmellon/vim-jsx-pretty'                                 " JSX
Plug 'kevinoid/vim-jsonc'                                       " JSON
Plug 'tpope/vim-rails'                                          " ruby rails

call plug#end()

" ----------------------------------------
" PLUGIN CONFIGURATIONS
" ----------------------------------------
"" vim-one
let g:one_allow_italics=1                             " allow italics
colorscheme one                                       " enable vim-one theme

"" vim-airline
let g:airline_powerline_fonts=1                       " status line with symbols
let g:airline#extensions#tabline#enabled=1            " display all buffers at top
let g:airline#extensions#tabline#buffer_nr_show=1     " display buffer #

"" vim-easymotion
let g:EasyMotion_do_mapping=0                         " disable default mappings
let g:EasyMotion_smartcase=1                          " case-insensitive

"" supertab
let g:SuperTabDefaultCompletionType='<C-n>'           " top-down cycle instead of bottom-up default

" ----------------------------------------
" LEADER & LOCALLEADER
" ----------------------------------------
let mapleader="\<Space>"
let localleader=','

" ----------------------------------------
" PLUGIN KEY BINDINGS
" ----------------------------------------
"" undotree
" toggle undotree
nnoremap <F4> :UndotreeToggle<CR>

"" vim-easymotion
" change prefix
map <Leader> <Plug>(easymotion-prefix)
" jump to letter
nmap <Leader><Space> <Plug>(easymotion-overwin-f)
" jump to lines below
nmap <Leader>j <Plug>(easymotion-j)
" jump to lines above
nmap <Leader>k <Plug>(easymotion-k)

"" fzf
" find file under current directory
nnoremap <Leader>f :FZF<CR>
" find file under $HOME directory
nnoremap <Leader><S-F> :FZF ~<CR>

"" emmet-vim
let g:user_emmet_leader_key='<C-Space>'               " emmet-vim leader key

"" coc.nvim
" trigger completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

lua require('basic')

" ****************************************
" @geyokoyama
" https://geyokoyama.github.io
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
"" Terminal Aethetics
set termguicolors         " enable 24-bit color terminal support

"" Coding Awareness
set number                " display line number
set expandtab             " tab insert spaces
set tabstop=2             " # of space characters on tab
set shiftwidth=2          " # of space characters on indent
set scrolloff=999         " cursor line is vertically centered
set wrap                  " text wrap
set linebreak             " prevent wrap inside word
set lazyredraw            " prevent redrawing screen during macro
set hidden                " prevent loss of buffer history when switching buffers
set list                  " display hidden characters
let &showbreak='↪ '       " hidden character to indicate start of wrapped line
set listchars=tab:│·,eol:↲,nbsp:␣,trail:•,extends:▶,precedes:◀  " set hidden characters

"" Search
set ignorecase            " not case sensitive
set smartcase             " override ignorecase when pattern contains uppercase

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
Plug 'tpope/vim-fugitive'                                       " git plugin
Plug 'mbbill/undotree'                                          " visualize undo branches
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }             " enable fzf in neovim

"" Code Completion
Plug 'mattn/emmet-vim'                                          " HTML & CSS snippets
Plug 'raimondi/delimitmate'                                     " automatic closing of brackets
Plug 'ervandew/supertab'                                        " <tab> to cycle through patterns
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }   " completion engine

"" Language
Plug 'pangloss/vim-javascript'                                  " JavaScript
Plug 'maxmellon/vim-jsx-pretty'                                 " JSX

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

"" deoplete
let g:deoplete#enable_at_startup=1                    " enable deoplete

" ----------------------------------------
" LEADER & LOCALLEADER
" ----------------------------------------
let mapleader=' '
let localleader=','

" ----------------------------------------
" KEY BINDINGS
" ----------------------------------------
"" Insert Mode
" <esc> remap
inoremap jk <esc>

"" Normal Mode
" edit/source vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>rv :source $MYVIMRC<cr>

" toggle hidden characters
nnoremap <silent> <F3> :set list!<cr>

" remove all trailing whitespaces
nnoremap <silent> <F5> :call strip_trailing_whitespaces#StripTrailingWhitespaces()<cr>

" ----------------------------------------
" PLUGIN KEY BINDINGS
" ----------------------------------------
"" undotree
" toggle undotree
nnoremap <F4> :UndotreeToggle<cr>

"" fzf
" find file under current directory
nnoremap <leader>f :FZF<cr>
" find file under $HOME directory
nnoremap <leader>F :FZF ~<cr>

" ----------------------------------------
" ABBREVIATIONS
" ----------------------------------------
iabbrev @@ george_y@outlook.com
iabbrev comcom https://geyokoyama.github.io

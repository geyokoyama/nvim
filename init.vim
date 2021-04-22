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
  silent execute !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ----------------------------------------
" EDITOR BEHAVIOR
" ----------------------------------------
"" Terminal Aethetics
" enable 24-bit color terminal support
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"" Coding Awareness
set number                  " display line number
set expandtab               " tab insert spaces
set tabstop=2               " # of space characters on tab
set shiftwidth=2            " # of space characters on indent
set scrolloff=999           " cursor line is vertically centered
set wrap                    " text wrap
set linebreak               " prevent wrap inside word
set lazyredraw              " prevent redrawing screen during macro
match ErrorMsg '\s\+$'      " highlight trailing whitespaces

"" Search
set ignorecase              " not case sensitive
set smartcase               " override ignorecase when pattern contains uppercase

"" Netrw
let g:netrw_banner=0        " remove banner
let g:netrw_liststyle=3     " tree style
let g:netrw_winsize=25      " set netrw size

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
Plug 'vim-airline/vim-airline'            " improved status bar
Plug 'vim-airline/vim-airline-themes'     " status bar theme

"" Utility
Plug 'mattn/emmet-vim'                    " HTML & CSS snippets
Plug 'easymotion/vim-easymotion'          " easier cursor movement
Plug 'preservim/nerdcommenter'            " easy commenting
Plug 'raimondi/delimitmate'               " automatic closing of brackets, quotes, paranthesis etc
Plug 'tpope/vim-fugitive'                 " git plugin
Plug 'mbbill/undotree'                    " visualize undo branches

"" Language

call plug#end()

" ----------------------------------------
" PLUGIN CONFIGURATIONS
" ----------------------------------------
"" vim-airline
let g:airline_powerline_fonts=1                   " status line with symbols
let g:airline#extensions#tabline#enabled=1        " display all buffers at top
let g:airline#extensions#tabline#buffer_nr_show=1 " display buffer #

" ----------------------------------------
" LEADER & LOCALLEADER
" ----------------------------------------
let mapleader=' '
let localleader=','

" ----------------------------------------
" CUSTOM MAPPINGS
" ----------------------------------------
"" Normal Mode
" edit/source vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>rv :source $MYVIMRC<cr>

" open netrw in working/current directory
nnoremap <leader>dd :Lexplore<cr>
nnoremap <leader>da :Lexplore %:p:h<cr>

" remove all trailing whitespaces
nnoremap <silent> <F5> :let _save_pos=getpos(".") <Bar>
  \:let _s=@/ <Bar>
  \:%s/\s\+$//e <Bar>
  \:let @/=_s <Bar>
  \:nohl <Bar>
  \:unlet _s <Bar>
  \:call setpos('.', _save_pos) <Bar>
  \:unlet _save_pos<cr>

" toggle undotree
nnoremap <F4> :UndotreeToggle<cr>

"" Insert Mode
" <esc> remap
inoremap jk <esc>

" ----------------------------------------
" ABBREVIATIONS
" ----------------------------------------
iabbrev @@ george_y@outlook.com
iabbrev comcom https://georgeeyokoyama.github.io

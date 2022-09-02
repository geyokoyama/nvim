-- --------------- --
-- EDITOR BEHAVIOR --
-- --------------- --

local set = vim.opt

-- Terminal Aethetics
set.termguicolors = true -- enable 24-bit color terminal support

-- Coding Awareness
set.title         = true    -- show filename as title
set.number        = true    -- display line number
set.expandtab     = true    -- tab insert spaces
set.tabstop       = 2       -- # of space characters on tab
set.shiftwidth    = 2       -- # of space characters on indent
set.scrolloff     = 999     -- cursor line is vertically centered
set.linebreak     = true    -- prevent wrap inside word
set.lazyredraw    = true    -- prevent redrawing screen during macro
set.ignorecase    = true    -- not case sensitive
set.smartcase     = true    -- override ignorecase when pattern contains uppercase
set.hidden        = true    -- prevent loss of buffer history when switching buffers
set.list          = true    -- display hidden characters
set.mouse         = 'a'     -- enable mouse support
set.spell         = true    -- enable spell checking with ]s and [s shown by underline
set['showbreak']  = '▶▶▶ '  -- hidden character to indicate start of wrapped line
set.listchars     = 'tab:│·,eol:↲,nbsp:␣,trail:•,extends:▶,precedes:◀'  -- set hidden characters

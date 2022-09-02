-- ------------ --
-- KEY BINDINGS --
-- ------------ --

-- INSERT MODE
-- <Esc> remap
vim.keymap.set('i', 'jk', '<Esc>')

-- NORMAL MODE
-- edit/source vimrc
vim.keymap.set('n', 'ev', ':vsplit $MYVIMRC<CR>')
vim.keymap.set('n', 'sv', ':source $MYVIMRC<CR>')

-- highlight cursor line & column
vim.keymap.set('n', '<F2>', ':set cursorcolumn!<CR> :set cursorline!<CR>')

-- toggle hidden characters
vim.keymap.set('n', '<F3>', ':set list!<CR>', { silent = true })

-- remove all trailing whitespaces
vim.keymap.set('n', '<F5>', ':call strip_trailing_whitespaces#StripTrailingWhitespaces()<CR>', { silent = true })

-- easier tab navigation
vim.keymap.set('n', '<tab>', ':if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>', { silent = true })
vim.keymap.set('n', '<s-tab>', ':if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>', { silent = true })

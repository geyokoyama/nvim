# init.vim
George's personal neovim configuration

## Table of Contents
* [Setup](#setup)
* [Key Bindings](#key-bindings)
  - [Insert Mode](#insert-mode)
  - [Normal Mode](#normal-mode)
  - [Netrw Window](#netrw-window)
* [Plugin Key Bindings](#plugin-key-bindings)
  - [Text Editing](#text-editing)
    + [Undotree](#undotree)

## Setup
1. Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim).
2. Run `git clone https://github.com/geyokoyama/nvim.git ~/.config/nvim/.`.
3. Start up Neovim with `nvim` and see plugins getting installed by [vim-plug](https://github.com/junegunn/vim-plug).
4. Restart Neovim and you should be good to go!

*Note: [vim-airline](https://github.com/vim-airline/vim-airline) will require [powerline fonts](https://github.com/vim-airline/vim-airline#integrating-with-powerline-fonts) to look nice!*

## Key Bindings
### Insert Mode
|Shortcut|Action|
|---|---|
|`jk`|same as \<esc\>|

### Normal Mode
|Shortcut|Action|
|---|---|
|`<leader>ev`|edit init.vim|
|`<leader>rv`|source init.vim|
|`<leader>dd`|open **netrw** in working directory or close netrw|
|`<leader>da`|open **netrw** in current directory|
|`<F5>`|remove all trailing whitespaces|

### Netrw Window
|Shortcut|Action|
|---|---|
|`.`|toggle hidden files|
|`Shift`+`P`|close preview window(`p` to open)|
|`o`|open/close directory or open file|
|`Shift`+`O`|close netrw or open file and close netrw|

## Plugin Key Bindings
### Text Editing
#### [Undotree](https://github.com/mbbill/undotree)
|Shortcut|Action|
|---|---|
|`<F4>`|toggle **undotree**|

# init.vim
George's personal neovim configuration

## Table of Contents
* [Setup](#setup)
  - [Requirements](#requirements)
  - [Installation](#installation)
* [Key Bindings](#key-bindings)
  - [Insert Mode](#insert-mode)
  - [Normal Mode](#normal-mode)
* [Plugin Key Bindings](#plugin-key-bindings)
  - [Text Editing](#text-editing)
    + [undotree](#undotree)
  - [Navigation](#navigation)
    + [fzf](#fzf)

## Setup
### Requirements
* [fzf](https://github.com/junegunn/fzf)

### Installation
1. Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim).
2. Run `git clone https://github.com/geyokoyama/nvim.git ~/.config/nvim`.
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
|`<F3>`|toggle hidden characters|
|`<F5>`|remove all trailing whitespaces|

## Plugin Key Bindings
### Text Editing
#### [undotree](https://github.com/mbbill/undotree)
|Shortcut|Action|
|---|---|
|`<F4>`|toggle **undotree**|

### Navigation
#### [fzf](https://github.com/junegunn/fzf)
|Shortcut|Action|
|---|---|
|`<leader>f`|find file under current directory|
|`<leader>Shift`+`F`|find file under $HOME directory|

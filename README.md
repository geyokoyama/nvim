# init.vim

George's personal neovim configuration

## Table of Contents

* [Setup](#setup)
  * [Requirements](#requirements)
  * [Installation](#installation)
* [Key Bindings](#key-bindings)
  * [Insert Mode](#insert-mode)
  * [Normal Mode](#normal-mode)
* [Plugin Key Bindings](#plugin-key-bindings)
  * [Text Editing](#text-editing)
    * [undotree](#undotree)
  * [Navigation](#navigation)
    * [vim-easymotion](#vim-easymotion)
    * [emmet-vim](#emmet-vim)
    * [fzf](#fzf)

## Setup

### Requirements

* [node](https://nodejs.org/en/) Note: I use [nvm](https://github.com/nvm-sh/nvm)
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install node
```
* [fzf](https://github.com/junegunn/fzf)
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### Installation

1. Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim).
2. Run `git clone https://github.com/geyokoyama/nvim.git ~/.config/nvim`.
3. Start up Neovim with `nvim` and see plugins getting installed by
[vim-plug](https://github.com/junegunn/vim-plug).
4. Restart Neovim and you should be good to go!

*Note: [vim-airline](https://github.com/vim-airline/vim-airline) will require
[powerline
fonts](https://github.com/vim-airline/vim-airline#integrating-with-powerline-fonts)
to look nice!*  *Note: [coc.vim](https://github.com/neoclide/coc.nvim) will
require additional setup to configure autocompletion for filetypes*

## Key Bindings

### Insert Mode

|Shortcut|Action|
|---|---|
|`j` `k`|same as \<Esc\>|

### Normal Mode

|Shortcut|Action|
|---|---|
|`<Leader>` `e` `v`|edit init.vim|
|`<Leader>` `r` `v`|source init.vim|
|`<F3>`|toggle hidden characters|
|`<F5>`|remove all trailing whitespaces|
|`<tab>` + `<shift> <tab>`|easier tab switching|

## Plugin Key Bindings

### Text Editing

#### [undotree](https://github.com/mbbill/undotree)

|Shortcut|Action|
|---|---|
|`<F4>`|toggle **undotree**|

### Navigation

#### [vim-easymotion](https://github.com/easymotion/vim-easymotion)

|Shortcut|Action|
|---|---|
|`<Leader>` `<Space>` + `{char}`|jump to char(acter)|
|`<Leader>` `j`|move down line|
|`<Leader>` `k`|move up line|

#### [emmet-vim](https://github.com/mattn/emmet-vim)
|Shortcut|Action|
|---|---|
|`<Control>-<Space>`|leader key for emmet-vim commands|

#### [fzf](https://github.com/junegunn/fzf)

|Shortcut|Action|
|---|---|
|`<Leader>` `f`|find file under current directory|
|`<Leader>` `<Shift>-F`|find file under $HOME directory|

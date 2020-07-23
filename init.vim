set number
set linebreak
set cursorline

set mouse=a
filetype plugin indent on
set encoding=utf-8
set nocompatible
syntax enable

set list
set listchars=tab:>-,trail:-,nbsp:+

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

if has('win32')
   " echo "У вас винда"
   " let $VIMPLUG=$HOME.'\AppData\Local\nvim\autoload\plug.vim'
else
  "  echo "У вас что-то другое"
    let $VIMPLUG=$HOME.'/.local/share/nvim/site/autoload/plug.vim'
endif

if empty(glob($VIMPLUG))
    silent !curl -fLo $VIMPLUG --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.config/nvim/bundle')

"Plug 'udalov/kotlin-vim' " Поддержка kotlin
Plug 'jiangmiao/auto-pairs' " Автозакрытие скобок, кавычек и т.д.
Plug 'frazrepo/vim-rainbow' " Цветные скобки
Plug 'yggdroot/indentline' " Визуализация отступов
Plug 'sheerun/vim-polyglot' " Пакет языков
Plug 'preservim/nerdtree' " Дерево файлов
Plug 'othree/xml.vim' " Поддержка XML
Plug 'thinca/vim-quickrun' " Компиляция и выполнение программ

"Темы
Plug 'sickill/vim-monokai' " monokai
Plug 'rafi/awesome-vim-colorschemes' " Пакет тем

call plug#end()    

let g:rainbow_active = 1

set termguicolors
colorscheme OceanicNext

let g:indentLine_char = '▏'

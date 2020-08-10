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
    " TODO: Сделать файл конфигурации совместимым с Windows
else
    let $VIMPLUG=$HOME.'/.local/share/nvim/site/autoload/plug.vim'
endif

if empty(glob($VIMPLUG))
    silent !curl -fLo $VIMPLUG --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.config/nvim/bundle')

""" Функционал
Plug 'jiangmiao/auto-pairs' " Автозакрытие скобок, кавычек и т.д.
Plug 'frazrepo/vim-rainbow' " Цветные скобки
Plug 'yggdroot/indentline' " Визуализация отступов
Plug 'sheerun/vim-polyglot' " Пакет языков
Plug 'preservim/nerdtree' " Дерево файлов
"Plug 'thinca/vim-quickrun' " Компиляция и выполнение программ
Plug 'junegunn/fzf.vim' " Использование fzf

""" Темы
Plug 'sickill/vim-monokai' " monokai
Plug 'rafi/awesome-vim-colorschemes' " Пакет тем

call plug#end()

set termguicolors
colorscheme OceanicNext

let g:rainbow_active = 1
let g:indentLine_char = '▏'
let g:fzf_command_prefix = 'Fzf'

let mapleader = ","

nmap ; :FzfBuffers<CR>
nmap <Leader>f :FzfFiles<CR>
nmap <Leader>t :FzfTags<CR>

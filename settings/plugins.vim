" Dein Settings
if &compatible
    set nocompatible
endif

" Required:
call plug#begin('~/.local/share/nvim/plugged')

    " Plugins
    Plug 'jiangmiao/auto-pairs'
    Plug 'Shougo/denite.nvim'
    Plug 'ozelentok/denite-gtags'
    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/nerdtree'
    Plug 'ervandew/supertab'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'majutsushi/tagbar'
    Plug 'itchyny/lightline.vim'
    Plug 'easymotion/vim-easymotion'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'mhinz/vim-startify'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi'
    Plug 'itblinker/highlighter.vim'
    Plug 'Yggdroot/indentLine'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'glts/vim-magnum'
    Plug 'glts/vim-radical'
    Plug 'junegunn/limelight.vim'

    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox'
    Plug 'arcticicestudio/nord-vim'
call plug#end()

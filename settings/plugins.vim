" Dein Settings
if &compatible
    set nocompatible
endif

" Required:
set runtimepath+=/home/mmalecki/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/mmalecki/.cache/dein')
    call dein#begin('/home/mmalecki/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('/home/mmalecki/.cache/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('jiangmiao/auto-pairs')
    "call dein#add('kien/ctrlp.vim')
    call dein#add('Shougo/denite.nvim')
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif
    call dein#add('scrooloose/nerdcommenter')
    call dein#add('scrooloose/nerdtree')
    call dein#add('ervandew/supertab')
    call dein#add('bfrg/vim-cpp-modern',
                  \{
                  \'on_ft':['cpp', 'hpp', 'h', 'c']
                  \})
    call dein#add('majutsushi/tagbar')
    call dein#add('vim-airline/vim-airline')
    call dein#add('easymotion/vim-easymotion')
    "call dein#add('nvie/vim-flake8')
    call dein#add('terryma/vim-multiple-cursors')
    call dein#add('mhinz/vim-startify')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('tpope/vim-fugitive')
    "call dein#add('gustafj/vim-ttcn',
                  "\{
                  "\'on_ft':['ttcn3']
                  "\})
    call dein#add('Shougo/deoplete.nvim')
    "call dein#add('davidhalter/jedi-vim',
                  "\{
                  "\'on_ft':['py']
                  "\})
    call dein#add('deoplete-plugins/deoplete-jedi',
                  \{
                  \'on_ft':['py']
                  \})
    call dein#add('itblinker/highlighter.vim')
    call dein#add('aklt/plantuml-syntax',
                  \{
                  \'on_ft':['uml']
                  \})
    call dein#add('tpope/vim-dispatch')
    call dein#add('radenling/vim-dispatch-neovim')
    call dein#add('Yggdroot/indentLine')
    call dein#add('bronson/vim-trailing-whitespace')
    call dein#add('ozelentok/denite-gtags')
    call dein#add('Shougo/deoplete-clangx',
                  \{
                  \'on_ft':['cpp', 'hpp', 'h', 'c']
                  \})

    call dein#add('joshdick/onedark.vim')
    call dein#add('morhetz/gruvbox')
    call dein#add('vim-airline/vim-airline-themes')

    call dein#add('junegunn/rainbow_parentheses.vim')

    call dein#end()
    call dein#save_state()
endif

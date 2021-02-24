set encoding=UTF-8
set cindent
set cinoptions+=g0
set background=dark
set termguicolors
set exrc
set secure
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set smartindent
set autoindent
set expandtab
set number
set relativenumber
set colorcolumn=120
set ignorecase
set incsearch
set cursorline
set nowrap
set updatetime=100
set path+=**

map     <F1> :NERDTreeToggle<CR>
map     <F2> :TagbarToggle<CR>
map     <F3> :rightbelow cwin<CR>
map     <F4> :noh<CR>

map     <C-k> :wincmd k<CR>
map     <C-j> :wincmd j<CR>
map     <C-h> :wincmd h<CR>
map     <C-l> :wincmd l<CR>
map     <C-e> :tabnext<CR>
map     <C-q> :tabprevious<CR>
map     <bar> :vsplit<CR>
nmap     _    :split<CR>

nmap    <leader>fs :call FlipSource()<CR>
nmap    <leader>l :Limelight!!<CR>

filetype plugin indent on
highlight ColorColumn ctermbg=darkgray

autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
autocmd BufNewFile,BufRead *.log setfiletype log
autocmd BufNewFile,BufRead *.LOG setfiletype log
autocmd BufNewFile,BufRead *.out setfiletype log
autocmd BufNewFile,BufRead *.ttcn3 setfiletype ttcn

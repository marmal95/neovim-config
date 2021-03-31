let g:lightline = {
       \ 'colorscheme': 'onedark',
       \ 'active': {
       \   'left': [ ['mode', 'paste'], ['gitbranch', 'readonly', 'filename', 'modified'] ],
       \   'right': [ [ 'lineinfo' ], ['percent'], ['fileformat', 'fileencoding', 'filetype' ] ]
       \ },
       \ 'component': {
       \   'gitbranch': '%{FugitiveStatusline()}',
       \   'readonly': '%{&filetype=="help"?"":&readonly?"\ue0a2":""}',
       \   'modified': '%{&filetype=="help"?"":&modified?"\ue0a0":&modifiable?"":"-"}'
       \ },
       \ 'component_visible_condition': {
       \   'readonly': '(&filetype!="help" && &readonly)',
       \   'modified': '(&filetype!="help" && (&modified||!&modifiable))',
       \   'gitbranch': '(&filetype!="help" && exists("*fugitive#head") && fugitive#head() != "")'
       \ },
       \ 'component_function': {
       \   'lineinfo': "MyLineinfo",
       \ },
       \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
       \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
       \ }

function! MyLineinfo() abort
    return line('.') . '/' . line('$')
endfunction

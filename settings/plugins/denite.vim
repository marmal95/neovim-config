call deoplete#custom#option('sources',
            \ {
            \ '_': ['~', 'buffer', 'dictionary', 'file', 'member', 'omni', 'file', 'jedi']
            \ })

map     <leader>b :Denite buffer -start-filter -split=horizontal<CR>
map     <leader>f :Denite file/rec -start-filter -split=horizontal<CR>

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
nnoremap <silent><buffer><expr> <CR>
	    \ denite#do_map('do_action')
nnoremap <silent><buffer><expr> d
	    \ denite#do_map('do_action', 'delete')
nnoremap <silent><buffer><expr> p
	    \ denite#do_map('do_action', 'preview')
nnoremap <silent><buffer><expr> q
        \ denite#do_map('quit')
nnoremap <silent><buffer><expr> t
        \ denite#do_map('doaction', 'tabopen')
nnoremap <silent><buffer><expr> i
	    \ denite#do_map('open_filter_buffer')
nnoremap <silent><buffer><expr> <Space>
	    \ denite#do_map('toggle_select').'j'
nnoremap <silent><buffer><expr> <C-t>
      \ denite#do_map('do_action', 'tabopen')
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()

function! s:denite_filter_my_settings() abort
    imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
endfunction


" ag ignores .gitignore by default
call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

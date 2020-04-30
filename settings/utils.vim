function! TSelectOpenNewTab(pattern)
    if empty(taglist(a:pattern))
        echomsg "Pattern not found: ".a:pattern | return
    endif
    tab split | execute "tselect ".a:pattern
endfunction

function! TSelectOpenVerSplit(pattern)
    if empty(taglist(a:pattern))
        echomsg "Pattern not found: ".a:pattern | return
    endif
    vsp | execute "tselect ".a:pattern
endfunction

function! TSelectOpenHorSplit(pattern)
    if empty(taglist(a:pattern))
        echomsg "Pattern not found: ".a:pattern | return
    endif
    sp | execute "tselect ".a:pattern
endfunction

function! DispatchMake(target)
    execute "Dispatch make ".a:target
endfunction

function! DispatchRun(target)
    execute "Dispatch ".a:target
endfunction

function! ActivateCtags()
    nmap <buffer>   <leader>d g<C-]>
endfunction

function! ActivateGtags()
    nmap <buffer> <leader>d :DeniteCursorWord -buffer-name=gtags_def gtags_def<CR>
    nmap <buffer> <leader>r :DeniteCursorWord -buffer-name=gtags_ref gtags_ref<CR>
    nmap <buffer> <leader>g :DeniteCursorWord -buffer-name=gtags_grep gtags_grep<cr>
endfunction

augroup ActivateTags
    autocmd!
    autocmd Filetype ttcn,ttcn3,py call ActivateCtags()
    autocmd Filetype h,c,hpp,cpp call ActivateGtags()
augroup end

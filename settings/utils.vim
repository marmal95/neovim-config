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
    nmap <buffer>    t<C-]> :call TSelectOpenNewTab(expand("<cword>"))<CR>
    nmap <buffer>    v<C-]> :call TSelectOpenVerSplit(expand("<cword>"))<CR>
    nmap <buffer>    s<C-]> :call TSelectOpenHorSplit(expand("<cword>"))<CR>
endfunction

function! ActivateGtags()
    nmap <buffer> <leader>d :DeniteCursorWord -buffer-name=gtags_def gtags_def<CR>
    nmap <buffer> <leader>r :DeniteCursorWord -buffer-name=gtags_ref gtags_ref<CR>
    nmap <buffer> <leader>g :DeniteCursorWord -buffer-name=gtags_grep gtags_grep<CR>
endfunction

augroup ActivateTags
    autocmd!
    autocmd BufReadPost,BufNewFile *.ttcn,*.ttcn3,*.py call ActivateCtags()
    autocmd Filetype h,c,hpp,cpp call ActivateGtags()
augroup end

function! FlipSource()
    let l:current_file_path = expand("%:p")
    let l:split_file_path = split(current_file_path, '\/')
    let l:current_extension = split(current_file_path, '\.')[-1]
    let l:filename = split(split_file_path[-1], '\.')[-2] "

    if current_extension == "cpp"
        let l:split_file_path[-2] = "Include"
        let l:split_file_path[-1] = filename . ".hpp"
        let l:new_file_path = join(split_file_path, "/")
    elseif current_extension == "hpp"
        let l:split_file_path[-2] = "Source"
        let l:split_file_path[-1] = filename . ".cpp"
        let l:new_file_path = join(split_file_path, "/")
    endif

    exe ":e " "/" . new_file_path
endfunction

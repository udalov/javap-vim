" javap.vim
" Maintainer: Alexander Udalov
" Version: 1.1

if exists("javap_loaded")
    finish
endif
let g:javap_loaded = 1

augroup javap
    autocmd!

    autocmd BufReadPre,FileReadPre *.class setlocal bin
    autocmd BufReadPost,FileReadPost *.class call JavapCurrentBuffer()
    autocmd BufAdd,BufCreate zipfile:*/*.class setlocal bin
    autocmd BufEnter zipfile:*/*.class call JavapCurrentBuffer()
    autocmd BufReadPost zipfile:*/*.class set filetype=java
augroup END

function! JavapCurrentBuffer()
    let tmp = tempname() . ".class"
    execute "silent w " . tmp
    silent! 1,$delete
    execute "silent read !javap -c -v -p -s " . shellescape(tmp)
    normal! ggdd
    set filetype=java " TODO: doesn't work for zipfile:*/*.class
    setlocal nobin
endfunction

autocmd BufNewFile,BufRead *.ciscoasa set filetype=ciscoasa
autocmd BufNewFile,BufRead *.ciscoasa.cfg set filetype=ciscoasa
autocmd BufNewFile,BufRead *.asa.cfg set filetype=ciscoasa
autocmd BufNewFile,BufRead *.asa set filetype=ciscoasa

function! s:DetectCiscoASA()
    let v = getline(1,5)
    for l in v 
       if l =~ '^ASA Version'
         set filetype=ciscoasa
       endif
    endfor
endfunction

autocmd BufNewFile,BufRead * call s:DetectCiscoASA()

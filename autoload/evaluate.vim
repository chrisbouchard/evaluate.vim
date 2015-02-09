function! evaluate#EvaluateOperator(type)
    if a:type ==# 'v' || a:type ==# 'V'
        execute "normal! `<v`>"
    elseif a:type ==# 'char' || a:type ==# 'line'
        execute "normal! `[v`]"
    endif

    execute "normal! c\<C-r>=\<C-r>\"\<CR>\<ESC>"
endfunction


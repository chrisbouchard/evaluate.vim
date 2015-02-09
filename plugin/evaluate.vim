function! EvaluateOperator(type)
    if a:type ==# 'v' || a:type ==# 'V'
        execute "normal! `<v`>"
    elseif a:type ==# 'char' || a:type ==# 'line'
        execute "normal! `[v`]"
    endif

    execute "normal! c\<C-r>=\<C-r>\"\<CR>\<ESC>"
endfunction

if !exists("g:evaluate_plugin_map")
    let g:evaluate_plugin_map = "<leader>e"
endif

execute "nnoremap" g:evaluate_plugin_map ":set operatorfunc=EvaluateOperator<CR>g@"
execute "vnoremap" g:evaluate_plugin_map ":<C-u>call EvaluateOperator(visualmode())<CR>"


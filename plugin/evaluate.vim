if !exists("g:evaluate_plugin_map")
    let g:evaluate_plugin_map = "<leader>e"
endif

execute "nnoremap" "<silent>" g:evaluate_plugin_map ":set operatorfunc=evaluate#EvaluateOperator<CR>g@"
execute "vnoremap" "<silent>" g:evaluate_plugin_map ":<C-u>call evaluate#EvaluateOperator(visualmode())<CR>"


if !exists("g:evaluate_plugin_map")
    let g:evaluate_plugin_map = "<leader>e"
endif

execute "nnoremap" g:evaluate_plugin_map ":set operatorfunc=evaluate#EvaluateOperator<CR>g@"
execute "vnoremap" g:evaluate_plugin_map ":<C-u>call evalutate#EvaluateOperator(visualmode())<CR>"


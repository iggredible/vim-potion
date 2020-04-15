" if !exists("g:potion_command")
"   let g:potion_command = "potion"
" endif
"

nnoremap <buffer> <leader>rp :call potion#running#PotionCompileAndRunFile()<cr> 
nnoremap <buffer> <leader>rb :call potion#running#PotionShowBytecode()<cr> 

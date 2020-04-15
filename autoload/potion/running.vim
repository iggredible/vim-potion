echom "Autoloading PotionCompileAndRunFile..."

function! potion#running#PotionCompileAndRunFile()
    echom "Calling PotinoCompileAndRunFile"
    silent !clear
    execute "!" . g:potion_command . " " . bufname("%")
endfunction

function! potion#running#PotionShowBytecode()
    echom "PotionShowByteCode"

    " Get the bytecode.
    let bytecode = system(g:potion_command . " -c -V " . bufname("%") . " 2>&1")

    " Open a new split and set it up.
    vsplit __Potion_Bytecode__
    normal! ggdG
    setlocal filetype=potionbytecode
    setlocal buftype=nofile

    " Insert the bytecode.
    call append(0, split(bytecode, '\v\n'))
endfunction

echom "Finished loading PotionCompileAndRunFile!"

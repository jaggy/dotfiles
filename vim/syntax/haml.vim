autocmd FileType haml call HAMLOptions()

function HAMLOptions()
    set tabstop=4    " Columns per tab
    set shiftwidth=4 " Indentation >> and << count
endfunction

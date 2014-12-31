autocmd FileType php call PHPOptions()

function PHPOptions()
    set tabstop=4    " Columns per tab
    set shiftwidth=4 " Indentation >> and << count
endfunction

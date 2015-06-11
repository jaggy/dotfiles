function! phpunit#create_function()
    let current_line = line('.')

    call inputsave()
    let  description = input('Function name: ')
    call inputrestore()

    let function_name = substitute(description, ' ', '_', 'g')

    let function = [
                \ '/** @test **/',
                \ 'public function ' . function_name . '()',
                \ '{',
                \ "\t",
                \ '}',
                \ ]

    call append(current_line, function)
    normal 5>j
    normal 4j$
    startinsert
    call cursor( line('.'), col('.') + 1)
endfunction

" Test Write.
nnoremap <leader>tw :call phpunit#create_function()<cr>
inoremap <leader>tw <esc>:call phpunit#create_function()<cr>

function! phpunit#create_function()
    let current_line = line('.')

    call inputsave()
    let  description = input('Function name: ')
    call inputrestore()

    let function_name = substitute(description, ' ', '_', 'g')

    let function = [
                \ '/**',
                \ ' * ' . description,
                \ ' * ',
                \ ' * @test',
                \ ' * @access public',
                \ ' * @return void',
                \ ' */',
                \ 'public function ' . function_name . '()',
                \ '{',
                \ '     ',
                \ '}',
                \ ]

    call append(current_line, function)
    normal 11>j
    normal 10j$
    startinsert
endfunction

nnoremap <leader>zc :call phpunit#create_function()<cr>

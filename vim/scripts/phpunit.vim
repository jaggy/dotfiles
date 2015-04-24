function! phpunit#create_function()
    let current_line = line('.')

    call inputsave()
    let  description = input('Function name: ')
    call inputrestore()

    let function_name = substitute(description, ' ', '_', 'g')

    let function = [
                \ '/**',
                \ ' * ' . description,
                \ ' *',
                \ ' * @test',
                \ ' * @return void',
                \ ' */',
                \ 'public function ' . function_name . '()',
                \ '{',
                \ '',
                \ '}',
                \ ]

    call append(current_line, function)
    normal 10>j
    normal 9j$
    startinsert
    call cursor( line('.'), col('.') + 1)
endfunction

nnoremap <leader>zc :call phpunit#create_function()<cr>

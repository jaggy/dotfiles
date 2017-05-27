""" Copied from: https://gist.github.com/JeffreyWay/6753834

function! phpdependency#add()
    let dependency = split(input('Dependency [User user]: '))

    let typehint = ''
    let variable = dependency[-1]

    if len(dependency) == 2
        let typehint = dependency[0] . ' '
    endif

    " execute 'normal gg/construct^M:H^Mf)i, ' . typehint . ' $' . dependency . '^[/}^>O$this->^[a' . dependency . ' = $' . dependency . ';^[?{^MkOprotected $' . dependency . ';^M^[?{^MOuse ' . namespace . ';^M^['
    execute 'normal gg'

    " Find the constructor
    execute '/construct'

    " Print out the variable in the constructor.
    execute 'normal f)i, ' . typehint . '$' . variable

    " Move down to the brace and find the matching end brace.
    " We can also do 'normal ]}' but this might end up hitting the
    " end of an if statement than the end of the constructor.
    execute 'normal j%'

    " Insert the class variable assignemnt.
    execute 'normal O$this->' . variable . ' = ' . '$' . variable . ';'

    " Back to the top!
    execute 'normal gg'

    " Find the start of the class definition.
    " Though highly unlikely, since I don't really group namespaces,
    " this might hit a grouped namespace brace.
    execute '/{'

    " Insert the docblock.
    " execute "normal o/**\n" . typehint . ' ' . variable
    " execute "normal o\n@var " . typehint
    " execute "normal o/"

    " Insert the variable.
    execute 'normal oprotected $' . variable . ";\n"

    "
    " " Remove opening comma if there is only one dependency
    execute '%s/(, /(/ge'
endfunction

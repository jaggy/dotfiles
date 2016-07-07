""" Copied from: https://gist.github.com/JeffreyWay/6753834

function! AddDependency()
    let variable = input('Variable: ')
    let typehint = input('Typehint: ')

    " exec 'normal gg/construct^M:H^Mf)i, ' . typehint . ' $' . dependency . '^[/}^>O$this->^[a' . dependency . ' = $' . dependency . ';^[?{^MkOprotected $' . dependency . ';^M^[?{^MOuse ' . namespace . ';^M^['
	exec 'normal gg'

    " Find the constructor
    exec '/construct'

    " Print out the variable in the constructor.
    exec 'normal f)i, ' . typehint . ' $' . variable

    " Move down to the brace and find the matching end brace.
    " We can also do 'normal ]}' but this might end up hitting the
    " end of an if statement than the end of the constructor.
    exec 'normal j%'

    " Insert the class variable assignemnt.
    exec 'normal O$this->' . variable . ' = ' . '$' . variable . ';'

    " Back to the top!
	exec 'normal gg'

    " Find the start of the class definition.
    " Though highly unlikely, since I don't really group namespaces,
    " this might hit a grouped namespace brace.
    exec '/{'

    " Insert the docblock.
    " exec "normal o/**\n" . typehint . ' ' . variable 
    " exec "normal o\n@var " . typehint
    " exec "normal o/"

    " Insert the variable.
    exec 'normal oprotected $' . variable . ";\n"

    " 
    " " Remove opening comma if there is only one dependency
    exec '%s/(, /(/g'
endfunction

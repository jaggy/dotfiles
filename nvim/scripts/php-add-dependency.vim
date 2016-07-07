""" Copied from: https://gist.github.com/JeffreyWay/6753834

function! AddDependency()
    " let dependency = input('Variable: ')
    " 
    " exec 'normal gg/construct^M:H^Mf)i, ' . typehint . ' $' . dependency . '^[/}^>O$this->^[a' . dependency . ' = $' . dependency . ';^[?{^MkOprotected $' . dependency . ';^M^[?{^MOuse ' . namespace . ';^M^['
	exec 'normal gg/construct'
    " 
    " " Remove opening comma if there is only one dependency
    " exec 'normal :%s/(, /(/g'
endfunction

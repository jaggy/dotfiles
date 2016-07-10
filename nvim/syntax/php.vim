source ~/.dotfiles/nvim/syntax/php-default.vim

highlight link phpVarSelector phpDefine
highlight link phpIdentifier  phpDefine
 
hi! def link phpDocTags  phpDefine
hi! def link phpDocParam phpType

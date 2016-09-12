function! OverrideColorScheme(theme)
    exec 'colorscheme ' . a:theme

    highlight Normal        guibg=transparent ctermbg=0
    highlight LineNr        guibg=transparent ctermbg=0
    highlight GitGutterAdd  guibg=transparent ctermbg=0
    highlight ColorColumn   guibg=#333333
    highlight CursorLine    guibg=#333333
    highlight CursorLineNr  guibg=#333333
    highlight SpecialKey    guifg=#555555

    highlight Comment ctermfg=245 guifg=#929493 gui=italic
    highlight phpClassExtends gui=italic
    highlight phpClassImplements gui=italic
    highlight phpUseClass gui=italic
    highlight phpUseAlias gui=italic
    highlight phpRegion gui=italic
    highlight phpClass gui=NONE
    highlight phpFunction gui=NONE
    " highlight phpDocParam gui=italic ctermfg=214 guifg=#f0c674
endfunction

call OverrideColorScheme('colorsbox-steighties')
autocmd BufRead,BufNewFile *.php call OverrideColorScheme('colorsbox-stnight')

highlight Normal ctermbg=0

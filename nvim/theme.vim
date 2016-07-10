function! OverrideColorScheme(theme)
    exec 'colorscheme ' . a:theme

    highlight Normal        guibg=transparent
    highlight LineNr        guibg=transparent
    highlight GitGutterAdd  guibg=transparent
    highlight ColorColumn   guibg=#333333
    highlight CursorLine    guibg=#333333
    highlight CursorLineNr  guibg=#333333
    highlight SpecialKey    guifg=#555555
endfunction

call OverrideColorScheme('colorsbox-steighties')
autocmd BufRead,BufNewFile *.php call OverrideColorScheme('colorsbox-stnight')

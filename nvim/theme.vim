function! OverrideColorScheme(theme)
    exec 'colorscheme ' . a:theme

    highlight Normal        guibg=transparent ctermbg=0
    highlight LineNr        guibg=transparent ctermbg=bg
    highlight GitGutterAdd  guibg=transparent ctermbg=bg
    highlight CursorLine    ctermbg=492
    highlight ColorColumn   ctermbg=492
    highlight EndOfBuffer   ctermbg=bg ctermfg=bg guibg=bg guifg=bg
    " highlight CursorLineNr  guibg=#333333
    " highlight SpecialKey    guifg=#555555

    highlight VertSplit ctermbg=bg

    highlight SignColumn            ctermbg=bg
    highlight GitGutterAdd          ctermfg=green
    highlight GitGutterChange       ctermbg=bg ctermfg=yellow
    highlight GitGutterChangeDelete ctermbg=bg ctermfg=red
    highlight link GitGutterDelete GitGutterChangeDelete
endfunction

call OverrideColorScheme('colorsbox-steighties')
" autocmd BufRead,BufNewFile *.php call OverrideColorScheme('colorsbox-stnight')

let g:airline#themes#zbm#palette = {}

function! airline#themes#zbm#refresh()
  let g:airline#themes#zbm#palette.accents = {
        \ 'red': airline#themes#get_highlight('Constant'),
        \ }

  let s:N1 = airline#themes#get_highlight2(['DbgCurrent', 'bg'], ['Folded', 'fg'], 'bold')
  let s:N2 = airline#themes#get_highlight('Folded')
  let s:N3 = airline#themes#get_highlight('NonText')

  let g:airline#themes#zbm#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let s:Nmod = airline#themes#get_highlight('Comment')
  let g:airline#themes#zbm#palette.normal_modified = {
        \ 'airline_c': s:Nmod
        \ }

  let s:I1 = airline#themes#get_highlight2(['DbgCurrent', 'bg'], ['String', 'fg'], 'bold')
  let s:I2 = airline#themes#get_highlight2(['String', 'fg'], ['Folded', 'bg'])
  let s:I3 = s:N3
  let g:airline#themes#zbm#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#zbm#palette.insert_modified = g:airline#themes#zbm#palette.normal_modified

  let s:R1 = airline#themes#get_highlight2(['DbgCurrent', 'bg'], ['Comment', 'fg'], 'bold')
  let s:R2 = airline#themes#get_highlight2(['Comment', 'fg'], ['Folded', 'bg'])
  let s:R3 = s:N3
  let g:airline#themes#zbm#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#zbm#palette.replace_modified = g:airline#themes#zbm#palette.normal_modified

  let s:V1 = airline#themes#get_highlight2(['DbgCurrent', 'bg'], ['Identifier', 'fg'], 'bold')
  let s:V2 = airline#themes#get_highlight2(['Identifier', 'fg'], ['Folded', 'bg'])
  let s:V3 = s:N3
  let g:airline#themes#zbm#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#zbm#palette.visual_modified = g:airline#themes#zbm#palette.normal_modified

  let s:IA = airline#themes#get_highlight('Comment')
  let g:airline#themes#zbm#palette.inactive = airline#themes#generate_color_map(s:Nmod, s:Nmod, s:Nmod)
  let g:airline#themes#zbm#palette.inactive_modified = {
        \ 'airline_c': s:Nmod
        \ }
endfunction

call airline#themes#zbm#refresh()

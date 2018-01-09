let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive' ] ],
      \   'right': [ [  ], [ 'filename' ] ],
      \ },
      \ 'component_function': {
      \     'fugitive': 'LightLineFugitive'
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': " ", 'right': "" },
      \ 'subseparator': { 'left': " ", 'right': "" }
      \ }

function! LightLineFugitive()
    if exists("*fugitive#head")
        let branch = fugitive#head()

        return branch !=# '' ? "\ue0a0 " . branch : ''
    endif

    return ''
endfunction

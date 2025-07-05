"let s:lh_gui1='#21252D'
"let s:lh_gui2='#00BFA4'
"let s:lh_gui3='#FFFADE'
"let s:lh_gui4='#090B26'
"let s:lh_gui5='#50C16E'
"let s:lh_gui6='#ED722E'
"let s:lh_gui7='#FF5050'
"let s:lh_gui8='#CCCCCC'
"let s:lh_gui9='#FC2929'
"let s:lh_gui10='#D68EB2'
"let s:lh_gui11='#E25600'
"let s:lh_gui12='#FF4D00'
"let s:lh_gui13='#FFFF00'


"let s:lh_cterm1='234'
"let s:lh_cterm2='43'
"let s:lh_cterm3='230'
"let s:lh_cterm4='233'
"let s:lh_cterm5='71'
"let s:lh_cterm6='208'
"let s:lh_cterm7='203'
"let s:lh_cterm8='188'
"let s:lh_cterm9='196'
"let s:lh_cterm10='175'
"let s:lh_cterm11='166'
"let s:lh_cterm12='202'
"let s:lh_cterm13='226'

let g:airline#themes#statusbar#palette = {}

function! g:airline#themes#statusbar#refresh()
  let g:airline#themes#statusbar#palette.accents = {
        \ 'red': airline#themes#get_highlight('Constant'),
        \ }

  let s:N1 = airline#themes#get_highlight2(['Folded', 'bg'], ['Folded', 'fg'], 'bold')
  let s:N2 = airline#themes#get_highlight('Folded')
  "let s:N3 = airline#themes#get_highlight('NonText')
  let s:N3 = airline#themes#get_highlight2(['NonText', 'fg'], ['Folded', 'bg'])
  let s:Nmod = airline#themes#get_highlight2(['Error', 'fg'], ['Folded', 'bg'])

  let g:airline#themes#statusbar#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  "let g:airline#themes#statusbar#palette.normal.airline_c = s:Nmod
  let g:airline#themes#statusbar#palette.normal_modified = {
        \ 'airline_c': s:Nmod
        \ }

  let s:I1 = airline#themes#get_highlight2(['Folded', 'bg'], ['String', 'fg'], 'bold')
  let s:I2 = airline#themes#get_highlight2(['String', 'fg'], ['Folded', 'bg'])
  let s:I3 = s:N3
  let g:airline#themes#statusbar#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  "let g:airline#themes#statusbar#palette.insert.airline_c = s:Nmod
  let g:airline#themes#statusbar#palette.insert_modified = g:airline#themes#statusbar#palette.normal_modified

  let s:R1 = airline#themes#get_highlight2(['Folded', 'bg'], ['Comment', 'fg'], 'bold')
  let s:R2 = airline#themes#get_highlight2(['Comment', 'fg'], ['Folded', 'bg'])
  let s:R3 = s:N3
  let g:airline#themes#statusbar#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#statusbar#palette.replace_modified = g:airline#themes#statusbar#palette.normal_modified

  let s:V1 = airline#themes#get_highlight2(['Folded', 'bg'], ['Identifier', 'fg'], 'bold')
  let s:V2 = airline#themes#get_highlight2(['Identifier', 'fg'], ['Folded', 'bg'])
  let s:V3 = s:N3
  let g:airline#themes#statusbar#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#statusbar#palette.visual_modified = g:airline#themes#statusbar#palette.normal_modified

  let s:C1 = airline#themes#get_highlight2(['Folded', 'bg'], ['Identifier', 'fg'], 'bold')
  let s:C2 = airline#themes#get_highlight2(['Identifier', 'fg'], ['Folded', 'bg'])
  let s:C3 = s:N3
  let g:airline#themes#statusbar#palette.command = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#statusbar#palette.command_modified = g:airline#themes#statusbar#palette.normal_modified

  let s:IA = airline#themes#get_highlight('NonText')
  let g:airline#themes#statusbar#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#statusbar#palette.inactive_modified = {
        \ 'airline_c': s:Nmod
        \ }
endfunction
call airline#themes#statusbar#refresh()

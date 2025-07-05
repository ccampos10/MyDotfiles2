let s:background = [231, 'NONE']
let s:red = [231, '#ff0000']
let s:N1 = [s:red[1], s:background[1], s:red[0], s:background[0]]
let s:N2 = [s:red[1], s:background[1], s:red[0], s:background[0]]
let s:N3 = [s:red[1], s:background[1], s:red[0], s:background[0]]

let g:airline#themes#ttbar#palette = {}

let g:airline#themes#ttbar#palette.normal = {
    \ 'airline_a': s:N1,
    \ 'airline_b': s:N2,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:N3}

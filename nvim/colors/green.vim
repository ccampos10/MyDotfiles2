hi clear
syntax reset
let g:colors_name = "green"
set background=dark

hi Normal               guifg=#dadada   gui=none    guibg=none

hi Comment              guifg=#585858   gui=none

hi Constant             guifg=#9660f0   gui=none
hi String               guifg=#ef9862   gui=none
hi link Character Constant
hi Number               guifg=#f582e4   gui=none
hi link Boolean Constant
hi Float                guifg=#f582e4   gui=none

hi Identifier           guifg=#42ab49   gui=none
hi Function             guifg=#5a92ff   gui=none

hi Statement            guifg=#37fd77   gui=none
hi link Conditional Statement
hi link Repeat Statement
hi Label                guibg=#ff0000   gui=italic
hi Operator             guifg=#69f5fd   gui=none
hi Keyword              guibg=#ff0000   gui=italic
hi link Exception Statement

hi PreProc              guifg=#ef40af   gui=none

hi Type                 guifg=#e03d3d   gui=none

hi Special              guifg=#e0e080   gui=none

hi DiffAdd              guifg=#6ef8be   gui=bold    guibg=none
hi DiffChange           guifg=#e9ff81   gui=bold    guibg=none
hi DiffDelete           guifg=#e03d3d   gui=bold    guibg=none
hi DiffText             guifg=#ffff00   gui=none    guibg=#ff0000

hi Pmenu                guifg=#dadada               guibg=#454545
hi SignColumn           guifg=#ffff00               guibg=none
hi Title                guifg=#ffff00               guibg=#ff0000
hi LineNr               guifg=#747474               guibg=none
hi NonText              guifg=#747474               guibg=none
hi SpecialComment       guifg=#ffff00               guibg=#ff0000
hi CursorLine           guifg=none                  guibg=#454545
hi TabLineFill          guifg=#ffff00               guibg=#ff0000
hi TabLine              guifg=#ffff00               guibg=#ff0000
hi StatusLine           guifg=#dadada   gui=bold    guibg=#454545
hi StatusLineNC         guifg=#dadada   gui=none    guibg=none
hi Search               guifg=#dadada   gui=bold    guibg=#747474
hi VertSplith           guifg=#ffff00               guibg=#ff0000
hi Visual               guifg=none      gui=italic  guibg=#454545

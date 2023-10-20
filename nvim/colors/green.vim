hi clear
syntax reset
let g:colors_name = "green"
set background=dark

hi idk              ctermbg=196 ctermfg=231
hi ik               ctermbg=46 ctermfg=231

hi Comment          ctermfg=240

"Constant
hi Constant         ctermbg=196 ctermfg=231
hi String           ctermfg=35
hi link Character idk
"Number puede ser 203, 204, 209 o 210
hi Number           ctermfg=203
hi Boolean          ctermfg=203
hi Float            ctermfg=203

"Identifier
hi Identifier       ctermfg=28
hi Function         ctermfg=111

"Statement
hi Statement        ctermfg=41
hi Conditional      ctermfg=135
hi Repeat           ctermfg=135
hi link Label idk
hi Operator         ctermfg=209
hi link Keyword idk
hi Exception        ctermfg=135

"PreProc
hi PreProc          ctermfg=112
hi Include          ctermfg=112
hi Define           ctermfg=112
hi link Macro idk
hi link PreCondit idk

"Type
hi Type             ctermfg=153
hi link StorageClass idk
hi Structure        ctermfg=197 cterm=bold
hi link Typedef idk

"Special
hi Special          ctermfg=129 cterm=italic
hi link Special idk
hi link SpecialChar idk
hi link Tag idk
hi link Delimiter idk
hi link SpecialComment idk
hi link Debug idk

hi Underline        ctermbg=196 ctermfg=231
hi Ignore           ctermbg=196 ctermfg=231
hi Error            ctermbg=197 ctermfg=231
hi Todo             ctermbg=196 ctermfg=231
